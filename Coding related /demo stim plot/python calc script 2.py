# -*- coding: utf-8 -*-
"""
Created on Fri May  3 13:40:25 2019

@author: Radhanath
"""
import numpy as np
import matplotlib.pyplot as plt
plt.figure(1)
R1 = 1086000
R2 = 60900
datain = np.loadtxt('stim_data.txt',usecols = (2),skiprows = 1)
samplerate = 1000
xaxis = np.linspace(0,len(datain)/samplerate, num = len(datain))
voltage = (datain*(R1+R2))/R2
plt.plot(xaxis,voltage)
plt.ylabel("voltage(volts)")
plt.xlabel("time(s)")
plt.title("example stimulation dose (2.5 minutes) load = 20k")
current = voltage/20000
plt.figure(2)
plt.plot(xaxis,current*1000)
plt.ylabel("current(mAmps)")
plt.xlabel("time(s)")
plt.title("example stimulation dose (2.5 minutes) load = 20k")