import datetime
import matplotlib.pyplot as plt
from matplotlib.dates import DayLocator, HourLocator, DateFormatter, drange
from numpy import arange
import random

def load_data():
    with open('shadowsocks.reset.log', 'r') as file:
        logs = file.read()
    times = []
    dates = []
    for line in logs.split('\n'):
        log = line.strip()
        if log != '':
            log = log.split()
            times.append(int(log[0]))
            dates.append(log[1])

    dates = [datetime.datetime.strptime(d, '%Y-%m-%d') for d in dates]
    return dates, times

days, counts = load_data()

fig, ax = plt.subplots()
ax.plot_date(days, counts, 'b')

plt.show()
