void setup() {
  // put your setup code here, to run once:
pinMode(6, OUTPUT);
Serial.begin(9600);
} 
int i = 218;
int initial = i;
void loop() {
  // put your main code here, to run repeatedly:
analogWrite(6,i);
Serial.println(i);
i++;
delay(1000);
if(i ==223){
  i = initial;
}
}
