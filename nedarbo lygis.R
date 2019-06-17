if(!require(tidyverse)) install.packages("tidyverse"); require(tidyverse)
if(!require(ggplot2)) install.packages("ggplot2"); require(ggplot2)

data <- data.table.11 %>% filter(V3=="Lietuvos Respublika")

ggplot(data, aes(as.character(V1), V7))+
  geom_point()+
  geom_line(aes(group=1),col= "red")+
  theme_bw()+
  geom_text(aes(label=V7), vjust=-3, size=4)+ 
  theme(axis.text.x = element_text(angle = 45, hjust = 1))+
  labs(title = "Nedarbo lygis Lietuvoje", subtitle = "Šaltinis:LSD", x="Metai", y="%")
