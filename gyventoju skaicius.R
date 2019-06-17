if(!require(tidyverse)) install.packages("tidyverse"); require(tidyverse)
if(!require(ggplot2)) install.packages("ggplot2"); require(ggplot2)

data <- data.table.9 %>% filter(Laikotarpis>="2009-01-01",
                                Administracinė.teritorija=="Lietuvos Respublika")

ggplot(data, aes(as.character(Laikotarpis), Reikšmė))+
  geom_point()+
  geom_line(aes(group=1),col= "red")+
  theme_bw()+
  geom_text(aes(label=Reikšmė), vjust=-3, size=4)+ 
  theme(axis.text.x = element_text(angle = 45, hjust = 1))+
  labs(title = "Lietuvos gyventojų skaičius 2009-2019m.", subtitle = "Šaltinis:LSD", x="Metai", y="Gyventojų skaičius, tūkst.")

