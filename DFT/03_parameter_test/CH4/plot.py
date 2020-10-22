#!/usr/bin/env python

import numpy as np
import matplotlib.pyplot as plt

import sys

fname = sys.argv[1]
data = np.loadtxt(fname)

plt.plot(data[:,0], data[:,1], '-o')
plt.show()
