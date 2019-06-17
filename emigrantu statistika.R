if(!require(tidyverse)) install.packages("tidyverse"); require(tidyverse)
if(!require(ggplot2)) install.packages("ggplot2"); require(ggplot2)
data2 <- data.table.10 


ggplot(data2, aes(as.character(Laikotarpis), Reikšmė))+
  geom_bar(stat = "identity", fill="gold2" , position = "dodge")+
  geom_text(aes(label=Reikšmė), vjust=-0.5, size=3.5)+ 
  theme(axis.text.x = element_text(angle = 45, hjust = 1))+
  labs(title = "Lietuvos emigracija 2009-2019m.", subtitle = "Šaltinis:LSD", x="Metai", y="Gyventojų skaičius")
