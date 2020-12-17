#
# Amazing Analysis on my data
#
# 2020/12/16 Shiho AOKI

rm(list=ls())
#install.packages("tidyverse")
#install.packages("ggfortify")

library(tidyverse)
library(ggfortify)

data <- read.csv("C:/Users/saoki/project/mywork/r_exercise/datasets-master/compensation.csv")

#y=ax+b
#a=a', b=b'
Ares <- lm(Fruit~Root,data)
autoplot(Ares,smooth.colour=NA)#->rplot_sindanA.png
anova(Ares)
summary(Ares)
#a=a', b‚b'
Bres <- lm(Fruit~Root+Grazing, data)
autoplot(Bres,smooth.colour=NA)#->rplot_sindanB.png
anova(Bres)
summary(Bres)
#a‚a', b‚b'
Cres <- lm(Fruit~Root*Grazing, data)
autoplot(Cres,smooth.colour=NA)#->rplot_sindanC.png
anova(Cres)
summary(Cres)
