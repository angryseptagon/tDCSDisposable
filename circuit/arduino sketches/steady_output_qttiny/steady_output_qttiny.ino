void setup() {
  // put your setup code here, to run once:
pinMode(6, OUTPUT);
Serial.begin(115200);
} 
int voltage =0;
int i = 0;
void loop() {
  // put your main code here, to run repeatedly:
i = 218 ;
analogWrite(6,i);
voltage = analogRead(25);
Serial.println(String(i) + " " + String(voltage));
delay(2);
}
