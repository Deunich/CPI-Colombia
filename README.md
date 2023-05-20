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

## Non-Stationary vs Stationary

![dow](https://github.com/Deunich/CPI-Colombia/assets/114511470/892472fe-1fcb-4c58-a143-589b8ee5fff8)


### Moving Average (MA) & Autoregressor (AR)

![AR MA](https://github.com/Deunich/CPI-Colombia/assets/114511470/e134e6e0-a6dd-47d7-b2ef-717326dc4017)

**Ask that the frequency be equal to the lag

![lag](https://github.com/Deunich/CPI-Colombia/assets/114511470/2723f1e1-783e-43f2-9af3-cf4af4af82c7)

**Arima Model0 & Ljung-Box

Box-Ljung test

data:  residuals(model0)
X-squared = 1.726, df = 1, p-value = 0.1889

MA(5) , Differences (2) , Autoregressor (5) ---> (5,2,5)
![model0](https://github.com/Deunich/CPI-Colombia/assets/114511470/517058ea-b191-483d-9430-2620f3c3555e)

## Arima Model1 & Ljung-Box

Box-Ljung test

data:  residuals(model1)
X-squared = 0.12559, df = 1, p-value = 0.723

MA(4) , Differences (2) , Autoregressor (4) ---> (4,2,4)
![Model1](https://github.com/Deunich/CPI-Colombia/assets/114511470/8751ff56-9e72-4070-ad73-3b3b1c7c54e7)

mistake

![mistake](https://github.com/Deunich/CPI-Colombia/assets/114511470/c3389d51-c2b4-41f8-b5f1-02e8aa41537b)

## Forecast next 10 months, December 2023


![forecast](https://github.com/Deunich/CPI-Colombia/assets/114511470/ebcfd738-293c-4238-8634-315787e47d2b)

## We graph the data (months)

![months](https://github.com/Deunich/CPI-Colombia/assets/114511470/dfa31ebd-b279-43d6-b9af-ffe79220a256)

## Multiplicative model
![Multiplicative model](https://github.com/Deunich/CPI-Colombia/assets/114511470/9a23f300-e1f2-4584-ba60-4bd6d172c52a)

