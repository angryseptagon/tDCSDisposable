void setup() {
  // put your setup code here, to run once:
pinMode(6, OUTPUT);
Serial.begin(9600);
} 
int i = 0;
void loop() {
  // put your main code here, to run repeatedly:
i = 219;
analogWrite(6,i);
Serial.println(i);
delay(2);
}
