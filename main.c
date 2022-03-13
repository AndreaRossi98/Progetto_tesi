#include <stdio.h>
#include <stdint.h> //aggiunta dopo per vedere se cambia printf
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
//#include "common.h"
//#include "coines.h"

//SENSIRION's sensor libraries
#include "sensirion_common.h"
#include "sensirion_config.h"
#include "sensirion_i2c.h"
#include "sensirion_i2c_hal.h"
#include "scd4x_i2c.h"
#include "sps30.h"

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

    printf("Starting the program\n \n\r");
    //log_init();
    //NRF_LOG_INFO("This is log data from nordic device..");
    twi_init();
    nrf_delay_ms(3000);

    
    for (address = 1; address <= TWI_ADDRESSES; address++)
    {
        err_code = nrf_drv_twi_rx(&m_twi, address, &sample_data, sizeof(sample_data));
        if (err_code == NRF_SUCCESS)
        {
            detected_device = true;
            //NRF_LOG_INFO("TWI device detected at address 0x%x.", address);
            //printf("detect\n\r");
            printf("TWI device detected at address 0x%x.\n\r", address);
        }
        //NRF_LOG_FLUSH();
    }

    if (!detected_device)
    {
        //NRF_LOG_INFO("No device was found.");
        //NRF_LOG_FLUSH();
        printf("no detect\n\r");
    }
    
    printf("\n");

////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////
/*
    //  **********************
    //  *BEGINNING sps30 part*
    //  **********************
    
    struct sps30_measurement measurement;
    int16_t ret;
    int16_t error;
    uint8_t data[10][4];
    #define SPS_CMD_READ_MEASUREMENT 0x0300

    
    //check if the sensor is ready to start and initialize it
    while (sps30_probe() != 0) 
    {
        printf("probe failed\n\r");
        nrf_delay_ms(1000);
    }
    printf("probe succeeded\n\r");


    //start measurement and wait for 10s to ensure the sensor has a
    //stable flow and possible remaining particles are cleaned out
    if (sps30_start_measurement() != 0) 
    {
        printf("error starting measurement\n\r");
    }
    nrf_delay_ms(10000);

    for(int i=0; i < 10; i++)
    {
        nrf_delay_ms(1000);
        //sensirion_i2c_hal_sleep_usec(SPS30_MEASUREMENT_DURATION_USEC);

        ret = sps30_read_measurement(&measurement);

        if(ret < 0)
        {
            printf("read measurement failed\n\r");
        }
        else
        {
            //stampa di tutti i valori letti(mass concentration and number concentration)
            printf("Measurement n° %d:\n",i+1);            
            int16_t intero;
            int16_t decimale;
            //mc_1p0
            intero = measurement.mc_1p0;
            decimale = (measurement.mc_1p0 - intero)*100;
            printf("PM 1.0: %d.%d [µg/m³]\n\r", intero, decimale);
            //mc_2p5
            intero = measurement.mc_2p5;
            decimale = (measurement.mc_2p5 - intero)*100;
            printf("PM 2.5: %d.%d [µg/m³]\n\r", intero, decimale);
            //mc_4p0
            intero = measurement.mc_4p0;
            decimale = (measurement.mc_4p0 - intero)*100;
            printf("PM 4.0: %d.%d [µg/m³]\n\r", intero, decimale);
            //mc_10p0
            intero = measurement.mc_10p0;
            decimale = (measurement.mc_10p0 - intero)*100;
            printf("PM 10.0: %d.%d [µg/m³]\n\r", intero, decimale);

            //mc_0p5
            intero = measurement.nc_0p5;
            decimale = (measurement.nc_0p5 - intero)*100;
            printf("PM 0.5: %d.%d [#/cm³]\n\r", intero, decimale);
            //mc_1p0
            intero = measurement.nc_1p0;
            decimale = (measurement.nc_1p0 - intero)*100;
            printf("PM 1.0: %d.%d [#/cm³]\n\r", intero, decimale);
            //mc_2p5
            intero = measurement.nc_2p5;
            decimale = (measurement.nc_2p5 - intero)*100;
            printf("PM 2.5: %d.%d [#/cm³]\n\r", intero, decimale);
            //mc_4p0
            intero = measurement.nc_4p0;
            decimale = (measurement.nc_4p0 - intero)*100;
            printf("PM 4.0: %d.%d [#/cm³]\n\r", intero, decimale);
            //mc_10p0
            intero = measurement.nc_10p0;
            decimale = (measurement.nc_10p0 - intero)*100;
            printf("PM 10.0: %d.%d [#/cm³]\n\r", intero, decimale);

            //typical particle size
            intero = measurement.typical_particle_size;
            decimale = (measurement.typical_particle_size - intero)*100;
            printf("Typical particle size: %d.%d [nm]\n\r", intero, decimale);
            printf("\n");
        }
    }

    
    
    nrf_delay_ms(1000);
    //ret = sps30_start_manual_fan_cleaning();
    nrf_delay_ms(1000);
    if (ret < 0)
    {}
    else  printf("Fan manual cleaning\r\n\n");

    nrf_delay_ms(1000);
    ret = sps30_stop_measurement();
    nrf_delay_ms(1000);
    if(ret < 0)
    {}
    else  printf("Measurement stopped\n\n\r");
    //  ****************
    //  *end SPS30 part*
    //  ****************
 */  
////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////

    //  **********************
    //  *BEGINNING SCD41 part*
    //  **********************
    
    int16_t error = 0;
    //error = 0;
    uint16_t status;
    uint16_t target_co2_concentration;
    uint16_t* frc_correction;

    target_co2_concentration = 400;

    scd4x_wake_up();
    scd4x_stop_periodic_measurement();
    //nrf_delay_ms(500);  //dopo stop aspettare almeno 500 ms
    scd4x_reinit();       //sembra non servire, non ho ancora modificato alcun parametro
    nrf_delay_ms(1000);
    
    error = scd4x_start_periodic_measurement();
    //error = scd4x_start_low_power_periodic_measurement();
    //nrf_delay_ms(1000);

    if(error != 0)  printf("errore\n");
    else    printf("Periodic measurement started\n\n");

    printf("Waiting for first measurement... (5 sec)\n\n");

    for (int i = 0;i<40;i++) 
    {
        // Read Measurement
        sensirion_i2c_hal_sleep_usec(50000);
        bool data_ready_flag = false;
        nrf_delay_ms(5000);
        error = scd4x_get_data_ready_flag(&data_ready_flag);

        if (error) 
        {
            printf("Error executing scd4x_get_data_ready_flag(): %i\n", error);
            continue;
        }
        if (!data_ready_flag) 
        {
            //nrf_delay_ms(500);
            printf("sono qua  \n");
            continue;
        }
        
        uint16_t co2;
        int32_t temperature;
        int32_t humidity;
        error = scd4x_read_measurement(&co2, &temperature, &humidity);
        if (error) 
        {
            printf("Error executing scd4x_read_measurement(): %i\n", error);
        } 
        else if (co2 == 0) 
        {
            printf("Invalid sample detected, skipping.\n");
        } 
        else 
        {
            printf("Measurement n° %d:\n",i+1);
            printf("CO2: %u ppm\n", co2);
            //printf("Temperature: %d m°C\n", temperature);
            //printf("Humidity: %d mRH\n\n\n", humidity);
        }

    }
    scd4x_stop_periodic_measurement();
    printf("FINE MISURAZIONI\n\n\n");
    
    //  ****************
    //  *end SCD41 part*
    //  ****************

////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////
/*
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
    uint32_t time_ms;
    uint16_t sample_count = 1;

    printf("INIZIO BME\n");

    bme.intf = BME68X_I2C_INTF;

    //rslt = bme68x_interface_init(&bme, BME68X_I2C_INTF);
    printf("ARRIVO QUA\n");
    rslt = bme68x_init(&bme);
    printf("ARRIVO QUA?\n");
    if(rslt < 0)   printf("Error initializing BME\n");
    else printf("Initialization of BME\n");

    nrf_delay_ms(1000);
    
    conf.filter = BME68X_FILTER_OFF;
    conf.odr = BME68X_ODR_NONE;
    conf.os_hum = BME68X_OS_16X;
    conf.os_pres = BME68X_OS_1X;
    conf.os_temp = BME68X_OS_2X;
    rslt = bme68x_set_conf(&conf, &bme);
    if(rslt < 0)   printf("Error configuting BME\n");
    else printf("BME configured\n");

    heatr_conf.enable = BME68X_ENABLE;
    heatr_conf.heatr_temp = 300;
    heatr_conf.heatr_dur = 100;
    rslt = bme68x_set_heatr_conf(BME68X_FORCED_MODE, &heatr_conf, &bme);
    if(rslt < 0)   printf("Error set gas configuration\n");
    else printf("Gas configuration correctly set\n");

    printf("Sample, TimeStamp(ms), Temperature(deg C), Pressure(Pa), Humidity(%%), Gas resistance(ohm), Status\n");
    
    while (sample_count <= SAMPLE_COUNT)
    {
        rslt = bme68x_set_op_mode(BME68X_FORCED_MODE, &bme);
        if(rslt < 0)   printf("Error set operational mode\n");
        else printf("Starting forced mode\n");

        rslt = bme68x_get_data(BME68X_FORCED_MODE, &dati_bme, &n_fields, &bme);
        if(rslt < 0)   printf("Error get data\n");
        else printf("Getting data\n");

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
        }
    }

    printf("End of measurement!\n");


    
   





    

*/
    while (true)
    {
    }
}

/** @} */
