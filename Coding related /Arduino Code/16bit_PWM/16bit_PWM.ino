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
    
}

/* Test: send very slow sawtooth waves. */
static uint16_t i = 53000;
int initialval = i;
uint16_t  pot = 1;
void loop() {
    analogWrite16(9, pot);
    analogWrite16(10, 0xffff - i);
//    i++;
//    if (i == 59000) {
//      i = initialval;
//    }
//calibration 
//rampstart 14400
//rampend 5988
    pot = analogRead(A0)*64;
    sense = analogRead(A5);
    Serial.println(String(pot)+ "," + String(sense));
    delay(10);
   
}
