#include "TinyDebugSerial.h"

TinyDebugSerialWriter_9600 tdsw9600;

void setup() {
Serial.begin(9600);
}

void loop() {
Serial.print("Testing..");
}
