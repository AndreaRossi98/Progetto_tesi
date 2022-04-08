#include <stdio.h>
#include "boards.h"
#include "nrf.h"
#include "nordic_common.h"
#include "app_util_platform.h"
#include "app_error.h"
#include "nrf_drv_twi.h"
#include "nrf_delay.h"
#include "nrf_log.h"
#include "nrf_log_ctrl.h"
#include "nrf_log_default_backends.h"
//#include "nrf_saadc.h"
//#include "nrf_drv_saadc.h"

//BME68 libraries
#include "bme68x.h"
#include "bme68x_defs.h"
#define SAMPLE_COUNT  UINT16_C(300)
#include "common.h"


//SENSIRION's sensor libraries
#include "sensirion_common.h"
#include "sensirion_config.h"
#include "sensirion_i2c.h"
#include "sensirion_i2c_hal.h"
#include "scd4x_i2c.h"
#include "sps30.h"
#include "reading_sps30.h"
#include "reading_scd41.h"

//ULPMS libraries   ancora da fare per nRF


/* TWI instance ID. */
#if TWI0_ENABLED
#define TWI_INSTANCE_ID     0
#elif TWI1_ENABLED
#define TWI_INSTANCE_ID     1
#endif

 /* Number of possible TWI addresses. */
 #define TWI_ADDRESSES      127

/* TWI instance. */
static const nrf_drv_twi_t m_twi = NRF_DRV_TWI_INSTANCE(TWI_INSTANCE_ID);

/* TWI initialization*/
void twi_init (void)
{
    ret_code_t err_code;

    const nrf_drv_twi_config_t twi_config = {
       .scl                = 19,
       .sda                = 18,
       .frequency          = NRF_DRV_TWI_FREQ_100K,
       .interrupt_priority = APP_IRQ_PRIORITY_HIGH,
       .clear_bus_init     = false
    };

    err_code = nrf_drv_twi_init(&m_twi, &twi_config, NULL, NULL);
    APP_ERROR_CHECK(err_code);

    nrf_drv_twi_enable(&m_twi);
}



void log_init(void)
{
    APP_ERROR_CHECK(NRF_LOG_INIT(NULL));
    NRF_LOG_DEFAULT_BACKENDS_INIT();
}

int main(void)
{
    ret_code_t err_code;
    uint8_t address;
    uint8_t sample_data;
    bool detected_device = false;

    log_init();
    NRF_LOG_INFO("Starting the program");
    twi_init();
    nrf_delay_ms(3000);

    
    for (address = 1; address <= TWI_ADDRESSES; address++)
    {
        err_code = nrf_drv_twi_rx(&m_twi, address, &sample_data, sizeof(sample_data));
        if (err_code == NRF_SUCCESS)
        {
            detected_device = true;
            NRF_LOG_INFO("TWI device detected at address 0x%x.", address);
        }
        NRF_LOG_FLUSH();
    }

    if (!detected_device)
    {
        NRF_LOG_INFO("No device was found.");
        NRF_LOG_FLUSH();
    }

    NRF_LOG_FLUSH();
    printf("\n");
    nrf_delay_ms(3000);


    //lettura_sps30(10);
    //lettura_scd41(2);

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    //  ***********************
    //  *BEGINNING BME688 part*
    //  ***********************

    int8_t rslt;
    struct bme68x_dev bme;
    struct bme68x_data dati_bme;
    uint8_t n_fields;
    struct bme68x_conf conf;
    struct bme68x_heatr_conf heatr_conf;
    uint32_t del_period;
    uint32_t time_ms = 0;
    uint16_t sample_count = 1;
    NRF_LOG_FLUSH();
    printf("INIZIO BME\n");

    rslt = bme68x_interface_init(&bme, BME68X_I2C_INTF); //controllare che le modifiche fatte vadano bene
    bme68x_check_rslt("bme68x_interface_init", rslt);   //modificato, se tutto ok stampa tutto ok

    rslt = bme68x_init(&bme);
    bme68x_check_rslt("bme68x_init", rslt);


    conf.filter = BME68X_FILTER_OFF;
    conf.odr = BME68X_ODR_NONE;
    conf.os_hum = BME68X_OS_16X;
    conf.os_pres = BME68X_OS_1X;
    conf.os_temp = BME68X_OS_2X;
    rslt = bme68x_set_conf(&conf, &bme);
    bme68x_check_rslt("bme68x_set_conf", rslt);

    heatr_conf.enable = BME68X_ENABLE;
    heatr_conf.heatr_temp = 300;
    heatr_conf.heatr_dur = 100;
    rslt = bme68x_set_heatr_conf(BME68X_FORCED_MODE, &heatr_conf, &bme);
    bme68x_check_rslt("bme68x_set_heatr_conf", rslt);

    printf("Sample, TimeStamp(ms), Temperature(deg C), Pressure(Pa), Humidity(%%), Gas resistance(ohm), Status\n");
    
    while (sample_count <= SAMPLE_COUNT)
    {
        nrf_delay_ms(1000);

        rslt = bme68x_set_op_mode(BME68X_FORCED_MODE, &bme);
        bme68x_check_rslt("bme68x_set_op_mode", rslt);

        del_period = bme68x_get_meas_dur(BME68X_FORCED_MODE, &conf, &bme) + (heatr_conf.heatr_dur * 1000);
        bme.delay_us(del_period, bme.intf_ptr);

        //time_ms = coines_get_millis();
        time_ms = time_ms + 1050;

        rslt = bme68x_get_data(BME68X_FORCED_MODE, &dati_bme, &n_fields, &bme);
        bme68x_check_rslt("bme68x_get_data", rslt);

        if(n_fields)
        {
            printf("Getting data correctly\n");
            printf("\n");
            printf("Printing results\n");
            printf("status: %d\n", dati_bme.status);
            printf("Gas index: %d\n", dati_bme.gas_index);
            printf("Meas index: %d\n", dati_bme.meas_index);
            printf("Res heat: %d\n", dati_bme.res_heat);
            printf("Current DAC: %d\n", dati_bme.idac);
            printf("Gas wait period: %d\n", dati_bme.gas_wait);

            int16_t intero;
            int16_t decimale;

            intero = dati_bme.temperature;
            decimale = (dati_bme.temperature - intero)*100;
            printf("Temperatura: %d.%d °C\n", intero, decimale);

            intero = dati_bme.pressure;
            decimale = (dati_bme.pressure - intero)*100;
            printf("Pressione: %d.%d Pa\n", intero, decimale);

            intero = dati_bme.humidity;
            decimale = (dati_bme.humidity - intero)*100;
            printf("Umidita': %d.%d %\n", intero,decimale);

            intero = dati_bme.gas_resistance;
            decimale = (dati_bme.gas_resistance - intero)*100;
            printf("Gas resistance: %d.%d O\n\n", intero, decimale);

            sample_count++;

        }
    }

    

    printf("End of measurement!\n");


    while (true)
    {
    }
}

/** @} */
