import pandas as pd
import matplotlib.pyplot as plt

cars = pd.read_csv('cars-py.csv', sep=',')
colors = {'bmw': 'red', 'ford':'green','honda':'brown','mercedes':'blue','toyota':'purple'}

fig, ax = plt.subplots()
plt.xticks([2000,3000,4000,5000],['2000','3000','4000','5000'])
plt.yticks([10,20,30,40],['10','20','30','40'])
ax.scatter(cars.Weight, cars.MPG, c=cars.Manufacturer.map(colors), s=cars.WeightSq * .00001, alpha=0.5)
ax.set_xlabel("Weight", fontsize=15)
ax.set_ylabel("MPG", fontsize=15)
ax.set_title('Matplotlib Chart')

ax.grid(True)
fig.tight_layout()

plt.show()