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
            //printf("detect\n\r");
            printf("TWI device detected at address 0x%x.\n\n\r", address);
        }
        //NRF_LOG_FLUSH();
    }

    if (!detected_device)
    {
        //NRF_LOG_INFO("No device was found.");
        //NRF_LOG_FLUSH();
        printf("nodetect\n\r");
    }
    

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

    for(int i=0; i < 20; i++)
    {
        nrf_delay_ms(1000);
        //sensirion_i2c_hal_sleep_usec(SPS30_MEASUREMENT_DURATION_USEC);
        ret = sps30_read_measurement(&measurement);

        //prova per cercare di sistemare la lettura dei dati
        error = sensirion_i2c_write_cmd(SPS30_I2C_ADDRESS, SPS_CMD_READ_MEASUREMENT);
        error = sensirion_i2c_read_words_as_bytes(SPS30_I2C_ADDRESS, &data[0][0],
                                              SENSIRION_NUM_WORDS(data));
        printf("Primo dato\n\r%d\n\r%d\n\r%d\n\r%d\n\r", data[1][0], data[1][1], data[1][2], data[1][3]);
        //fine prova

        if(ret < 0)
        {
            printf("read measurement failed\n\r");
        }
        else
        {
            printf("PM 2.5: %g\n\r", measurement.mc_2p5);
            //problemi su questa stampa, guarda formato numerico utilizzato e sistema SPS_CMD_START_MEASUREMENT_ARG
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
    //sensirion_i2c_hal_init();

    nrf_delay_ms(3000);

    // Clean up potential SCD40 states
    scd4x_wake_up();
    scd4x_stop_periodic_measurement();
    nrf_delay_ms(500);  //dopo stop aspettare almeno 500 ms
    //scd4x_reinit();       //sembra non servire, non ho ancora modificato alcun parametro
    nrf_delay_ms(500);
    error = scd4x_start_periodic_measurement();
    if(error != 0)  printf("errore\n");
    else    printf("Periodic measurement started\n\n");
    scd4x_reinit();
    nrf_delay_ms(5000);

    uint16_t serial_0;
    uint16_t serial_1;
    uint16_t serial_2;
    /*error = scd4x_get_serial_number(&serial_0, &serial_1, &serial_2);     non mi serve, da un errore che non capisco
    if (error) //se non è zero stampa                                       funziona senza
    {
        printf("Error executing scd4x_get_serial_number(): %i\n", error);       //error 2
    } 
    else 
    {
        printf("serial: 0x%04x%04x%04x\n", serial_0, serial_1, serial_2);
    }
*/
    printf("Waiting for first measurement... (5 sec)\n\n");

    for (int i = 0;i<80;i++) 
    {
        // Read Measurement
        sensirion_i2c_hal_sleep_usec(50000);
        bool data_ready_flag = false;
        nrf_delay_ms(5000);
        error = scd4x_get_data_ready_flag(&data_ready_flag);
        //printf("qua arrivo.\n\r");
        if (error) 
        {
            printf("Error executing scd4x_get_data_ready_flag(): %i\n", error);
            continue;
        }
        if (!data_ready_flag) 
        {
            printf("qua arrivo punto 2\n\r");
            nrf_delay_ms(500);
            continue;
        }
        
        //printf("qua arrivo punto 3\n\r");
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
            printf("CO2: %u ppm\n", co2);
            printf("Temperature: %d m°C\n", temperature);
            printf("Humidity: %d mRH\n\n\n", humidity);
        }

    }
    printf("FINE MISURAZIONI\n\n\n");
    //  ****************
    //  *end SCD41 part*
    //  ****************



    while (true)
    {
    }
}

/** @} */
