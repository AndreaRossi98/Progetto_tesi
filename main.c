#include <stdio.h>
#include <stdint.h> //aggiunta dopo per vedere se cambia printf
#include "boards.h"
#include "app_util_platform.h"
#include "app_error.h"
#include "nrf_drv_twi.h"
#include "nrf_delay.h"
//#include "nrf_saadc.h"
//#include "nrf_drv_saadc.h"
#include "nrf.h"        //controlla se serve o meno


//BME68 libraries
#include "bme68x.h"
#include "bme68x_defs.h"
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


int main(void)
{
    ret_code_t err_code;
    uint8_t address;
    uint8_t sample_data;
    bool detected_device = false;
   
    printf("Starting the program\n \n\r");
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
        printf("nodetect\n\r");
    }
    
    printf("\n");

////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////

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
            printf("Measurement n� %d:\n",i+1);            
            int16_t intero;
            int16_t decimale;
            //mc_1p0
            intero = measurement.mc_1p0;
            decimale = (measurement.mc_1p0 - intero)*100;
            printf("PM 1.0: %d.%d [�g/m�]\n\r", intero, decimale);
            //mc_2p5
            intero = measurement.mc_2p5;
            decimale = (measurement.mc_2p5 - intero)*100;
            printf("PM 2.5: %d.%d [�g/m�]\n\r", intero, decimale);
            //mc_4p0
            intero = measurement.mc_4p0;
            decimale = (measurement.mc_4p0 - intero)*100;
            printf("PM 4.0: %d.%d [�g/m�]\n\r", intero, decimale);
            //mc_10p0
            intero = measurement.mc_10p0;
            decimale = (measurement.mc_10p0 - intero)*100;
            printf("PM 10.0: %d.%d [�g/m�]\n\r", intero, decimale);

            //mc_0p5
            intero = measurement.nc_0p5;
            decimale = (measurement.nc_0p5 - intero)*100;
            printf("PM 0.5: %d.%d [#/cm�]\n\r", intero, decimale);
            //mc_1p0
            intero = measurement.nc_1p0;
            decimale = (measurement.nc_1p0 - intero)*100;
            printf("PM 1.0: %d.%d [#/cm�]\n\r", intero, decimale);
            //mc_2p5
            intero = measurement.nc_2p5;
            decimale = (measurement.nc_2p5 - intero)*100;
            printf("PM 2.5: %d.%d [#/cm�]\n\r", intero, decimale);
            //mc_4p0
            intero = measurement.nc_4p0;
            decimale = (measurement.nc_4p0 - intero)*100;
            printf("PM 4.0: %d.%d [#/cm�]\n\r", intero, decimale);
            //mc_10p0
            intero = measurement.nc_10p0;
            decimale = (measurement.nc_10p0 - intero)*100;
            printf("PM 10.0: %d.%d [#/cm�]\n\r", intero, decimale);

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
    
////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////

    //  **********************
    //  *BEGINNING SCD41 part*
    //  **********************
    
    //int16_t error = 0;
    error = 0;
    //sensirion_i2c_hal_init();

    nrf_delay_ms(3000);

    // Clean up potential SCD40 states
    scd4x_wake_up();
    scd4x_stop_periodic_measurement();
    nrf_delay_ms(500);  //dopo stop aspettare almeno 500 ms
    //scd4x_reinit();       //sembra non servire, non ho ancora modificato alcun parametro
    nrf_delay_ms(500);
    error = scd4x_start_periodic_measurement();
    //error = scd4x_start_low_power_periodic_measurement();
    if(error != 0)  printf("errore\n");
    else    printf("Periodic measurement started\n\n");
    scd4x_reinit();
    nrf_delay_ms(5000);

    uint16_t serial_0;
    uint16_t serial_1;
    uint16_t serial_2;
    /*error = scd4x_get_serial_number(&serial_0, &serial_1, &serial_2);     non mi serve, da un errore che non capisco
    if (error) //se non � zero stampa                                       funziona senza
    {
        printf("Error executing scd4x_get_serial_number(): %i\n", error);       //error 2
    } 
    else 
    {
        printf("serial: 0x%04x%04x%04x\n", serial_0, serial_1, serial_2);
    }
*/
    printf("Waiting for first measurement... (5 sec)\n\n");

    for (int i = 0;i<20;i++) 
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
            nrf_delay_ms(500);
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
            printf("Measurement n� %d:\n",i+1);
            printf("CO2: %u ppm\n", co2);
            printf("Temperature: %d m�C\n", temperature);
            printf("Humidity: %d mRH\n\n\n", humidity);
        }

    }
    printf("FINE MISURAZIONI\n\n\n");
    //  ****************
    //  *end SCD41 part*
    //  ****************

////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////

    //  ***********************
    //  *BEGINNING BME688 part*
    //  ***********************

    int8_t error_BME;
    struct bme68x_dev bme;
    struct bme68x_data dati_bme;
    uint8_t num_data;

    printf("INIZIO BME\n");

    error_BME = bme68x_init(&bme);
    if(error_BME < 0)   printf("Error initializing BME\n");
    else printf("Initialization of BME\n");

    nrf_delay_ms(1000);

    error_BME = bme68x_set_op_mode(BME68X_SEQUENTIAL_MODE, &bme);
    if(error_BME < 0)   printf("Error set operational mode\n");
    else printf("Starting sequential mode\n");

    nrf_delay_ms(1000);
    
    error_BME = bme68x_get_data( BME68X_SEQUENTIAL_MODE, &dati_bme, &num_data, &bme);
    if(error_BME < 0)   printf("Error get data\n");
    else 
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
        printf("Temperatura: %d.%d �C\n", intero, decimale);

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

    printf("End of measurement!\n");


    
   





    


    while (true)
    {
    }
}

/** @} */
