# -*- coding: utf-8 -*-
"""
Created on Sun Aug 20 15:13:20 2023

@author: Swarvanu
"""






import pandas as pd
import numpy as np
from scipy.fft import fft
import matplotlib.pyplot as plt


data = pd.read_csv("file.csv")
t=pd.Series(range(0,152))
j=np.diag(data)
y = abs(fft(j))


fig, plt1 = plt.subplots()
plt1.set_xlabel('t')

color = 'tab:purple'
plt1.set_ylabel('Diagonal Grayscale', color=color)
plt1.plot(t, j, color=color)

plt2 = plt1.twinx() 

color = 'tab:green'
plt2.set_ylabel('FFT Mag', color=color)   
plt2.plot(t, y, color= color)

plt.show()
