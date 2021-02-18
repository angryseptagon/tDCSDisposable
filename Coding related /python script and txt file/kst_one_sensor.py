import serial
import time

SERIAL_PORT = 'COM4'  # COM# on windows or /tty.usb... on Linux/Mac
serial_port = serial.Serial(SERIAL_PORT, 115200)

with open("kst_one_sensor.txt", "w") as f:
    f.write('Time Sensor_value\n')

try:
    starting_time = time.time()  # time in milliseconds

    while 1:
        current_time = (time.time() - starting_time) * 1000  # millisecond
        current_value = str(serial_port.readline())
        # print "current time = ", current_time, ", reading = ", current_value

        print (current_value.replace("b\'","").replace("\\n\'","\n"))

        with open("tDCS_calibration_data_tabsep.txt", "a") as f:
            f.write(current_value.replace("b\'","").replace("\\n\'","\n").replace(",","\t"))
except KeyboardInterrupt:
    print ("Keyboard Interrupt")
    # f.close()   # not needed since file is opened using 'with open
    #.replace("\n\'","\n").replace("b\'","")