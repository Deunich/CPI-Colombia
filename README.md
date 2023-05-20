# CPI-Colombia
CPI - Consumer's price index (Colombia "2000 - 2023")

This code allows exploring the time series of the Consumer Price Index in Colombia from 2000 to 2023-01. Currently, Colombia is experiencing double-digit inflation, a trend not observed since the early 2000s. The purpose of this data exploration is to understand the transformation of information and forecast the Consumer Price Index for the next 10 months, specifically until December 2023. The observed data is available until February 2023. Grateful to the Bank of the Republic of Colombia for providing open data.

![Time Serie](https://github.com/Deunich/CPI-Colombia/assets/114511470/199ba1d0-66e0-4400-83b4-18022ae3d6d4)

### check stationarity
Augmented Dickey-Fuller Test

data:  serieslog
Dickey-Fuller = -2.0498, Lag order = 6, p-value = 0.5551
alternative hypothesis: stationary

**It is not stationary since the: p-value = 0.5551  Proof Dickey-Fuller**

![first](https://github.com/Deunich/CPI-Colombia/assets/114511470/80ac8589-09d8-410e-bcbf-a1044ee6642d)

## We test stationarity again
Augmented Dickey-Fuller Test

data:  seriedif
Dickey-Fuller = -3.2653, Lag order = 6, p-value = 0.07737
alternative hypothesis: stationary

**Not stationary p-value 0.07 prubea Dickey Fuller, since the p-value is greater than 0.05

##  Prove two differences because it is not stationary yet

![two](https://github.com/Deunich/CPI-Colombia/assets/114511470/dad40faf-63e9-4a45-8d8c-8399a26e4198)

Augmented Dickey-Fuller Test

data:  seriedif2
Dickey-Fuller = -10.338, Lag order = 6, p-value = 0.01
alternative hypothesis: stationary

**P-value = 0.01 it´s < 0.05 that is stationarity
