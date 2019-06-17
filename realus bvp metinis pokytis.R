if(!require(tidyverse)) install.packages("tidyverse"); require(tidyverse)
if(!require(ggplot2)) install.packages("ggplot2"); require(ggplot2)

data3 <- bandymas
ggplot(data3, aes(as.character(Laikotarpis), X))+
  geom_bar(stat = "identity", fill="gold2" , position = "dodge")+
  geom_text(aes(label=X), vjust=-0.5, size=3.5)+ 
  theme(axis.text.x = element_text(angle = 45, hjust = 1))+
  labs(title = "Realus BVP metinis pokytis, proc.", subtitle = "Šaltinis: SEB bankas", x="Metai", y="Procentai")
