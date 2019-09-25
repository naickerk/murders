library(tidyverse)
load('rda/murders.rda')

murders %>% 
  mutate(abb = reorder(abb,rate)) %>% 
  ggplot(aes(x=abb,y=rate))+
  geom_col(width = 0.5,col='black')+
  coord_flip()

ggsave('figs/barplot.png')
