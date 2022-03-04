#include <stdio.h>
#include "boards.h"
#include "app_util_platform.h"
#include "app_error.h"
#include "nrf_drv_twi.h"
#include "nrf_delay.h"

//BME68 libraries
#include "bme68x.h"
#include "bme68x_defs.h"

//SENSIRION's sensor libraries
#include "sensirion_common.h"
#include "sensirion_config.h"   //forse manca una libreria qua sensirion_i2c_hal
#include "sensirion_i2c.h"
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


/**
 * @brief TWI initialization.
 */
void twi_init (void)
{
    ret_code_t err_code;

    const nrf_drv_twi_config_t twi_config = {
       .scl                = 20,
       .sda                = 19,
       .frequency          = NRF_DRV_TWI_FREQ_100K,
       .interrupt_priority = APP_IRQ_PRIORITY_HIGH,
       .clear_bus_init     = false
    };

    err_code = nrf_drv_twi_init(&m_twi, &twi_config, NULL, NULL);
    APP_ERROR_CHECK(err_code);

    nrf_drv_twi_enable(&m_twi);
}


/**
 * @brief Function for main application entry.
 */
int main(void)
{
    ret_code_t err_code;
    uint8_t address;
    uint8_t sample_data;
    bool detected_device = false;

    twi_init();

    for (address = 1; address <= TWI_ADDRESSES; address++)
    {
        err_code = nrf_drv_twi_rx(&m_twi, address, &sample_data, sizeof(sample_data));
        if (err_code == NRF_SUCCESS)
        {
            detected_device = true;
            //NRF_LOG_INFO("TWI device detected at address 0x%x.", address);
            printf("detect\n\r");
            printf("TWI device detected at address 0x%x.\n\r", address);
        }
        //NRF_LOG_FLUSH();
    }

    if (!detected_device)
    {
        //NRF_LOG_INFO("No device was found.");
        //NRF_LOG_FLUSH();
        printf("nodetect\n\r");
    }
    
    struct sps30_measurement measurement;
    int16_t ret;
    int16_t dato;
    
    //check if the sensor is ready to start and initialize it


    while (sps30_probe() != 0) 
    {
        printf("probe failed\n\r");
        nrf_delay_ms(1000);
    }

    //start measurement and wait for 10s to ensure the sensor has a
    //stable flow and possible remaining particles are cleaned out
    if (sps30_start_measurement() != 0) 
    {
        printf("error starting measurement\n\r");
    }
    nrf_delay_ms(10000);

    for(int i=0; i < 20; i++)
    {
        nrf_delay_ms(2000);
        if(ret < 0)
        {
            printf("read measurement failed\n\r");
        }
        else
        {
            dato = measurement.mc_2p5; //da sistemare questo passaggio, il float non me lo stampa, int si
            printf("PM 2.5: %d\n\r", dato);
        }
    }

    //sps30_stop_measurement();
    while (true)
    {
    }
}

/** @} */
