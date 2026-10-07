source("Scripts/Data_cleaning.R")

#set a global theme option for all plots
theme_set(theme_classic())

#boxplot of count
ggplot(diseases,aes(x=count,y=State)) + geom_boxplot() + 
  facet_wrap(~disease,scales="free",nrow=2)

#make a boxplot for rate = count/population
#this considers population size inflation of counts
rate_boxplot <- ggplot(diseases,aes(x=rate,y=State)) + geom_boxplot() + 
  facet_wrap(~disease,scales="free",nrow=2)
rate_boxplot

ggsave("graphs/rate_boxplot.png",width=8, height=4)
