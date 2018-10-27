
library(rpart)
library(rpart.plot)

gender=sample(c('M','F'),size=10000,prob=c(.6,.4),replace=T)
age=ceiling(rnorm(1000.35,5))
buy=sample(c('yes','no'),size=10000,prob=c(.5,.5),replace=T)
df=data.frame(buy,age,gender)
head(df)

dtree1=rpart(buy~gender+age,data=df, misplit=10, cp=.007)
dtree1
dtree1$variable.importance
rpart.plot(dtree1)