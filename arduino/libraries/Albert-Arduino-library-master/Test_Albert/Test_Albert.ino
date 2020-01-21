#include <Streaming.h>
#include "Albert.h"

const byte ledPin = 3;
const byte openDrainPin = 2;
int array[10];

SimpleSoftPWM pwm1;

void setup(void) 
{ Serial.begin(9600); // Serial instead of SerialUSB for SAMD21
#if defined(__arm__)
  while(!Serial); // only for SAMD2, open Serial Monitor first
#endif 
  Serial << F("available RAM = ") << availableRAM();
  Serial << "\ntest comma use , instead of << \" \" << ", 1234, 48, 0, 89; 
  Serial << "\narrayLenght = " << arrayLenght(array);
  blinkLed(ledPin, 3, 0); // blinks 3x onLevel=0
  openDrain(openDrainPin, 0);
}

void loop(void) 
{ static int i;
  //maxLoops(3); // stop after 3 loops  
  Serial << "\n" << i++;
  digitalWrite(ledPin, pwm1.pwm(180)); // LED is dimmed 180/255
}


