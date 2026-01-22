library(tidyverse)
library(here)
gss_cat

tv_hours_tab <- gss_cat %>%
  filter(age < 30) %>% 
  group_by(marital) %>%
  summarize(mean_tv_hours = mean(tvhours, na.rm = TRUE))
tv_hours_tab
write_csv(tv_hours_tab, here("tv_hours_by_marital.csv"))
