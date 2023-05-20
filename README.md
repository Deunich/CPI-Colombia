# CPI-Colombia
CPI - Consumer's price index (Colombia "2000 - 2023")

This code allows exploring the time series of the Consumer Price Index in Colombia from 2000 to 2023-01. Currently, Colombia is experiencing double-digit inflation, a trend not observed since the early 2000s. The purpose of this data exploration is to understand the transformation of information and forecast the Consumer Price Index for the next 10 months, specifically until December 2023. The observed data is available until February 2023. Grateful to the Bank of the Republic of Colombia for providing open data.
![CPI](https://github.com/Deunich/CPI-Colombia/assets/114511470/6c01626d-ea2c-4350-a83b-d8f5c5c4b3f4)

### check stationarity
Augmented Dickey-Fuller Test

data:  serieslog
Dickey-Fuller = -2.0498, Lag order = 6, p-value = 0.5551
alternative hypothesis: stationary

**It is not stationary since the: p-value = 0.5551  Proof Dickey-Fuller**

![noesta](https://github.com/Deunich/CPI-Colombia/assets/114511470/797c3e6b-9223-4c56-8cfe-ce8c1272fada)
