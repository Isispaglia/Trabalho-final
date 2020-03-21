germination <- read.table("data/germination1.txt", header = T)
#### Carregando pacotes ####
library(ggplot2)

#### Attach ####
attach(germination)
detach(germination)
names(germination)

#### plots ####
ggplot(data=germination, aes(x= trat, y= Values, fill= Category)) +
  geom_bar(stat="identity", color= "black", position=position_dodge()) + scale_fill_manual(values=c('black','lightgray')) + theme_classic() + labs(title="", x="Tratament", y = "Values")
