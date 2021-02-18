# -*- coding: utf-8 -*-
"""
Created on Fri Apr  5 13:08:19 2019

@author: Radhanath
"""
import numpy as np
import matplotlib.pyplot as plt
#y = 0
#x = 0
#for i in range(datain.shape[0]):
#    if(i>0):
#        y[i] = datain[i,0]
#        x[i] = datain[i,0]
labela = ['vbatt = 8.36','vbatt = 7.64','vbatt = 9.56','vbatt = 9.39','vbatt = 7.99','vbatt =7.76']
plt.figure(1)
i = 0
for i in range(6):
    datain = np.loadtxt("tDCS_calibration_data_tabsep_"+str(i+1)+".txt",skiprows = 2)
    plt.plot(datain[:,2],datain[:,0],label = labela[i])
plt.title("digital out vs. voltage output")
plt.xlabel("digital output (16-bit)")
plt.ylabel("voltage")
plt.legend()

plt.figure(2)
labelb = ['r = 20k','r = 10k Ohm','r = 5.1k Ohm','r = 33k Ohm','r = 47k Ohm','r = 47 Ohm']
i = 0
n = 0
for i in [5,6,7,8,9,10]:
    datain = np.loadtxt("tDCS_calibration_data_tabsep_"+str(i+1)+".txt",skiprows = 2)
    plt.plot(datain[:,2],datain[:,0], label = labelb[n])
    n= n +1
plt.title("digital out vs. voltage output (changing load resistance)")
plt.xlabel("digital output (16-bit)")
plt.ylabel("voltage")
plt.legend()
