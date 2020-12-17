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
plot(data)#-> rplot.png
ggplot(data, aes(y = Root)) + geom_boxplot()#-> rplot_root.png
ggplot(data, aes(y = Fruit))+ geom_boxplot()#-> rplot_fuit.png
summary(data)

ggplot(data, aes(x= Grazing, y=Fruit))+ geom_boxplot() +geom_point(size=4, colour="lightgrey",alpha=0.5)
# -> rplot_gvsf.png
ggplot(data, aes(x= Grazing, y=Root))+ geom_boxplot()+geom_point(size=4, colour="lightgrey",alpha=0.5)
# -> rplot_gvsr.png

ggplot(data, aes(x=Root, y=Fruit, colour=Grazing))+geom_point()
# -> rplot_2.6.png