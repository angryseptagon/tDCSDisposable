/*

*/
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

//declare variables for butterworth filter

double b[3] = {0.0201,0.0402,0.0201};
double a[3] = {1,-1.5610,0.6414};
double s = 0;
double n = 0;
double t = 0;
double in[3] = {0, 0, 0};
double out[3] = {0, 0, 0};
double y=0;
double x=0;

void setup() {
    pinMode(9,INPUT_PULLUP);
    setupPWM16();
    pinMode(9,OUTPUT);
    pinMode(7,OUTPUT);
      //initial input and output array
  in[0] = 0;    // x(k)
  in[1] = 0;    // x(k - 1)
  in[2] = 0;    // x(k - 2)
  out[0] = 0;   // y(k)
  out[1] = 0;   // y(k - 1)
  out[2] = 0;   // y(k - 2)
}

static uint16_t level = 0xffff;// set output to 0 mA initially
static uint16_t ilevel = 57000;// corresponding to 2 mA
static uint16_t maxlevel = 64000;//corresponds to 0 mA
static uint16_t tstep = maxlevel - ilevel;

double vplus, vminus, vout;
//variables for voltage divider calculation
double R1A = 80.9e3;
double R2A =.837e6;
double R1B = 80.2e3;
double R2B = .818e6;
double sum = 0;

double latest_voltage = 0;

bool chk_volt(){
  sum = 0;
  for(int m=0;m<3;m++){
    vplus = ((R1A +R2A)/R1A)*analogRead(A7)*(0.0048875855327468);
    vminus = ((R1B +R2B)/R1B)*analogRead(A6)*(0.0048875855327468);
    vout = vplus - vminus;
    x = vout;
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
   delay(5);
  }
  latest_voltage = y;
  if (latest_voltage < 53){
    Serial.print("voltage check passed ");
    Serial.print(latest_voltage);
    return true;
  }else{
    return false;
}
}


void rampstart(int duration){
  level = maxlevel;
  analogWrite16(9,level);
  while(level > ilevel){
    level--;
    analogWrite16(9,level);
    delay((1000*duration)/tstep);
    Serial.print(level);
    Serial.print("\n");
  }
}
bool stimfail = false;

void stimulation(int seconds){
  level = 0;
  analogWrite16(9,level);
  for(int s; s < seconds; s++){
    delay(1000);
    if(chk_volt()){
      Serial.print("passing second :");
      Serial.println((s+1));
    }else{
      Serial.print("stimulation fail at ");
      Serial.println(s+1);
      tone(13,440,500);
      delay(500 + 150);
      tone(13,349,500);
      delay(500 + 150);
      tone(13,349,500);
      stimfail = true;
    }
  }
}
void rampend(int duration){
  level = ilevel;
  analogWrite16(9,level);
  while(level< maxlevel){
    level++;
    analogWrite16(9,level);
    delay((1000*duration)/tstep);
    Serial.print(y);
    Serial.print(",");
    Serial.print(level);
    Serial.print("\n");
  }
  tone(13,440,500);
  delay(500 + 150);
  tone(13,349,500);
}

void loop() {
level = 0xffff;
analogWrite16(9,level);

if (!stimfail && chk_volt()){
  Serial.println("begining ramp");
  rampstart(60);//ramp arguement is duration of ramp in seconds
  Serial.println("ending ramp,begining stimulation");
  stimulation(2*60);//stimulation arduement in seconds
  Serial.print("ending stimulation");
  rampend(60);
  Serial.print("end ramp complete stimulation over, restart to begin stimulation again");
  stimfail = true;
}

}
