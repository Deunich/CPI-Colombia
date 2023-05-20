install.packages("timsac")
install.packages("vars")
install.packages("mFilter")
install.packages("dynlm")
install.packages("kableExtra")
install.packages("mlogit")
install.packages("fpp2")



## bookstores

library(lubridate)
library(urca)
library(tseries)
library(lubridate)
library(tidyverse)
library(car)
library(astsa)
library(foreign)
library(timsac)
library(vars)
library(lmtest)
library(mFilter)
library(dynlm)
library(nlme)
library(lmtest)
library(broom)
library(kableExtra)
library(knitr)
library(MASS)
library(parallel)
library(car)
library(mlogit)
library(dplyr)
library(tidyr)
library(forecast)
library(fpp2)
library(stats)
library(quantmod)
library(xts)
library(readxl)


## create time series

CPI <- read_excel("CPI.xlsx")


CPI.ts=ts(CPI, start=c(2000,1), frequency = 12)
print(CPI.ts)

plot(CPI.ts, main="Time series CPI", xlab="Years", ylab="Consumer's price index", col="#6495ED")

serieslog = log(CPI.ts)
serieslog


### check stationarity

adf.test(serieslog, alternative = "stationary")
## It is not stationary since the: p-value = 0.5551  Proof Dickey-Fuller

### Calculate the first difference
seriedif=diff(CPI.ts)
seriedif
plot(seriedif, main="First difference", col="#00008B")


## We test stationarity again

adf.test(seriedif) # Not stationary p-value 0.07 prubea Dickey Fuller, since the p-value is greater than 0.05

##  Prove two differences because it is not stationary yet

seriedif2=diff(CPI.ts, differences =2)
plot(seriedif2, main="Two differences", col="#00008B")
adf.test(seriedif2)  # p-valor = 0.01 si es menor que 0.05 osea es estacionario

## Non-Stationary vs Stationary
par(mfrow=c(2,1), mar=c(3,3,3,1)+.1)
plot(seriedif, main="First difference", col="#00008B")
plot(seriedif2, main="Two differences", col="#006400")


### Moving Average (MA) & Autoregressor (AR)

par(mfrow=c(2,1), mar=c(3,3,3,1)+.1)
acf(seriedif2)
pacf(seriedif2)

## Ask that the frequency be equal to the lag
acf(ts(seriedif2, frequency=2)) 
pacf(ts(seriedif2, frequency=2))

## Arima model0
model0=arima(CPI.ts,order=c(5,2,5))
model0

summary(model0)
tsdiag(model0)
Box.test(residuals(model0),type="Ljung-Box") #p-value= 0.1889 it's > that 0.5  is to say that there is no white noise

### Arima model1 - the best model

model1=arima(CPI.ts,order=c(4,2,4))
model1

summary(model1)
tsdiag(model1)
Box.test(residuals(model1),type="Ljung-Box") #p-value= 0.723 it´s > that 0.5  is to say that there is white noise

mistake=residuals(model1)
par(mfrow=c(1,1), mar=c(4,4,4,1)+.1)

plot(mistake)


#Arima model1 forecast
forecast=forecast::forecast(model1,h=10)
forecast

plot(forecast)

forecast1<-forecast(model1,level = c(95), h = 10)
autoplot(forecast1)


## We graph the data

boxplot(CPI.ts ~ cycle(CPI.ts))
cycle(CPI.ts)

plot(CPI.ts, ylab="Prices", main= "CPI - Colombia")


## Additive model Decomposes our series into several parts

addictive_model=decompose(CPI.ts)
plot(addictive_model)

## Multiplicative model

multiplicative_model = decompose(CPI.ts, type = "mult")
plot(multiplicative_model)

## We estimate the trend

trend=multiplicative_model$trend
print(trend)

## estimate seasonality

seasonality=multiplicative_model$seasonal
print(seasonality)


### We graph

par(mfrow=c(2,1), mar=c(3,3,3,1)+.1)
plot(trend)
plot(seasonality)

par(mfrow=c(1,1), mar=c(4,4,4,1)+.1)


## 
ts.plot(cbind(trend, trend*seasonality), lty=1:2)

