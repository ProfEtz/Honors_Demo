source("Scripts/cleaning.R")

theme_set(theme_bw())

#make a line graph of counts of each disease comparing states
ggplot(diseases, aes(x= year, y= count, color=state))+
  geom_line()+facet_wrap(~disease,scales="free_y")

#make a version using rate=count/population
graph <- ggplot(diseases, aes(x= year, y= rate, color=state))+
  geom_line()+facet_wrap(~disease,scales="free_y",nrow=2)

#save the file in a location where we can find it later
ggsave(filename = "graphs/rate_line_graph.png",plot = graph,
       width=8,height=3.5)
