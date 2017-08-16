#ifndef __CONTROL_H__
#define __CONTROL_H__
//1 Í·ÎÄ¼þ
#include "common.h"


void GetSamplezhi();
void GetOFFSET();
void get_ad();

void GetInputVoltageAverage(int j);
void GetMotorPulse(void);
void SpeedControl(void);
void SpeedControlOutput(void);
void StartIntegrationFront(void); 
void StartIntegrationZong(void); 
void ImageCapture_F(unsigned char * ImageData_F);
void ImageCapture_Z(unsigned char * ImageData_Z);
void SendHex(unsigned char hex);
void SamplingDelay(void);
void CCD_init(void);
void CalculateIntegrationTimeFront(void);
void CalculateIntegrationTimeZong(void);
uint8 PixelAverage(uint8 len, uint8 *data);
void SendImageData(unsigned char * ImageData);
void virtual_scope_show(void);
void serial_Txd(void);
void DirectionControl(void);
void DirectionControlOutput(void);
void SetServoVoltage(void);
void MotorOutput(void);
void MotorSpeedOut(void);
void SetMotorVoltage(float fMotorVoltage);
void virtual_scope_show(void);
void serial_Txd();
unsigned short CRC_CHECK(unsigned char *Buf, unsigned char CRC_CNT);
void OutPut_Data(void);
void ADC0_stop(void);
void ADC0_start(void);
void LCD_show(void);
void get_front();
void get_fu();
void route_type_F();
void route_type_Z();
void get_zong();
void Clear();
void binaryzation_F(unsigned char *point);
void binaryzation_Z(unsigned char *point);
void shache1();
void Speed_PID();
int  Abs(int a);
#endif