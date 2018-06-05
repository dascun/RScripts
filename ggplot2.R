library(ggplot2)
library(datasets)
attach(mtcars)
head(mtcars)
# ?mtcars - incase you want to get the data description
gg <- ggplot(mtcars, aes(x=mpg, y=disp)) +
  geom_point(aes(col=cyl, size=hp)) +
  labs(title="mpg vs disp", y="Displacement (cu.in.)", x="Miles/(US) gallon", caption="mtcars dataset")
plot(gg)
gg + scale_color_continuous(name='cyl', guide=FALSE)
gg + theme(legend.title = element_text(size=12, color="salmon", face="bold"),
           legend.justification=c(1,0), 
           legend.position=c(0.95, 0.05),  
           legend.background = element_blank(),
           legend.key = element_blank()) + 
  labs(subtitle="Legend: Bottom-Right Inside the Plot")