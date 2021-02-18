/* Configure digital pins 9 and 10 as 16-bit PWM outputs. */
void setupPWM16() {
    DDRB |= _BV(PB1) | _BV(PB2);        /* set pins as outputs */
    TCCR1A = _BV(COM1A1) | _BV(COM1B1)  /* non-inverting PWM */
        | _BV(WGM11);                   /* mode 14: fast PWM, TOP=ICR1 */
    TCCR1B = _BV(WGM13) | _BV(WGM12)
        | _BV(CS10);                    /* no prescaling */
    ICR1 = 0xffff;                      /* TOP counter value */
    Serial.begin(115200);
}

/* 16-bit version of analogWrite(). Works only on pins 9 and 10. */
void analogWrite16(uint8_t pin, uint16_t val)
{
    switch (pin) {
        case  9: OCR1A = val; break;
        case 10: OCR1B = val; break;
    }
}

int sense = 0;
void setup() {
    setupPWM16();
    int Ival =0;
    int level=0;
}

uint16_t findlevel(float curr){
//  double mout =  59210.9957064942*pow(curr,0)+  -13169.5007497324*pow(curr,1)+ 120531.361747551 * pow(curr,2)+  -530395.030431162*pow(curr,3)+ 1278069.41053836*pow(curr,4)+  -1812117.26955128*pow(curr,5)+ 1550518.46759775*pow(curr,6)+ -786439.231748774*pow(curr,7) + 217601.061216504*pow(curr,8) + -25301.0215722490*pow(curr,9);
  double mout;
  if (curr < 1.695){
    mout = -214.1*curr +58841;
  }else{
    mout = -3334566*pow(curr,3) + 2e06*pow(curr,2) -3e6*curr + 2e06;
  }
  if(curr <= 2){
     return  (uint16_t) mout;
  }
}

void loop(){
    float Ival = .1;
    uint16_t level = findlevel(Ival);
    analogWrite16(9, level);
    sense = analogRead(A5);
    Serial.println((level));
    delay(1000);
}
