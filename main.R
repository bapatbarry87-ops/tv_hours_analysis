library(tidyverse)
library(here)
gss_cat


tv_hours_tabulation <- gss_cat %>%
  filter(age < 30) %>% 
  group_by(marital) %>%
  summarize(mean_tv_hours = mean(tvhours, na.rm = TRUE))
tv_hours_tabulation
write_csv(tv_hours_tabulation, here("tv_hours_by_marital.csv"))
