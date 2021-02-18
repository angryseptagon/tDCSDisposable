 void setup() {
  // put your setup code here, to run once:
pinMode(6, OUTPUT);
Serial.begin(115200);
} 
int i = 217;
int initial = i;
int voltage =0;
void loop() {
  // put your main code here, to run repeatedly:
analogWrite(6,i);
//voltage = analogRead(25);
Serial.println(String(i) + " " + String(voltage));
i++;
delay(1000);
if(i ==224){
  i = initial;
}
} 
