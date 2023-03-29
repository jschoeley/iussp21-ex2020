library(tidyverse)

comp <- read_csv('comparison_aburto_islam.csv')

comp %>%
  ggplot(aes(y = fct_reorder(Country, ex_diff_aburto))) +
  geom_point(aes(x = ex_diff_islam), color = 'red') +
  geom_point(aes(x = ex_diff_aburto), color = 'blue')
