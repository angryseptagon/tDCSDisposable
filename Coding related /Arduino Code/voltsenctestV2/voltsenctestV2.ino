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

double b[3] = {0.0201,0.0402,0.0201};
double a[3] = {1,-1.5610,0.6414};
double s = 0;
double n = 0;
double t = 0;
double in[3] = {0, 0, 0};
double out[3] = {0, 0, 0};
double y=0;
double x=0;

int sense = 0;
void setup() {
    setupPWM16();
    pinMode(7,OUTPUT);
      //initial input and output array
  in[0] = 0;    // x(k)
  in[1] = 0;    // x(k - 1)
  in[2] = 0;    // x(k - 2)
  out[0] = 0;   // y(k)
  out[1] = 0;   // y(k - 1)
  out[2] = 0;   // y(k - 2)
  //Start the Serial port
}

static uint16_t i = 58645;
int initialval = i;
uint16_t  pot = 1;

void loop() {
  // put your main code here, to run repeatedly:
  analogWrite16(9,584300);//run revice in low current mode
  sense = analogRead(A3);
  
    //Generate ideal signal:
  x = sense;
//Update output x(k),x(k-1),x(k-2)
  in[2] = in[1];
  in[1] = in[0];
  in[0] = x;
 //Update output y(k-1),y(k-2)and Calculate the Filter signal output y(k) 
 //a(0)y(k)=b(0)x(k)+b(1)x(k-1)+b(2)x(k-2)-a(1)y(k-1)-a(2)y(k-2);
  out[2] = out[1];
  out[1] = out[0];
  out[0] = b[0] * in[0] + b[1] * in[1] + b[2] * in[2] - a[1] * out[1] - a[2] * out[2];
  out[0] = out[0] / a[0];
  y = out[0];
  Serial.print(x);
  Serial.print(" \t");
  Serial.println(y);  
  delay(5);
}
