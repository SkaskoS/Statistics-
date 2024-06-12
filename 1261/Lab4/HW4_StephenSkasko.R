library(babynames)
library(tidyverse)
library(mdsr)
library(Hmisc)
BabynamesDist <- make_babynames_dist()
head(BabynamesDist)


#Recreate figure
com_fem <- BabynamesDist %>% #com_fem stands for "common female"
  filter(sex == "F") %>%
  group_by(name) %>%
  filter(est_alive_today>0) %>%
  summarise(
    est_num_alive = sum(est_alive_today),
    q1_age = wtd.quantile(age_today, est_alive_today, probs = 0.25),
    median_age = wtd.quantile(age_today, est_alive_today, probs = 0.5),
    q3_age = wtd.quantile(age_today, est_alive_today, probs = 0.75)
  ) %>%
  arrange(desc(est_num_alive)) %>%
  head(25)
com_fem
w_plot <- ggplot(
  data = com_fem,
  aes(x = reorder(name, -median_age), y = median_age)) +
  xlab(NULL) +
  ylab("Age (in years)") +
  ggtitle("Median ages for females with the 25 most common names")
w_plot +
  geom_linerange(
    aes(ymin = q1_age, ymax = q3_age),
    color = "#f3d478",
    size = 5,
    alpha = 0.8
  ) +
  coord_flip()
w_plot +
  geom_linerange(aes(ymin = q1_age, ymax = q3_age),color = "#f3d478",
                 size = 5, alpha = 0.8) +
  geom_point(fill = "#ed3324", colour = "white", size = 3, shape = 21) +
  geom_point(aes(y=53,x=24),fill = "#ed3324", colour = "white", size = 3, shape = 21) +
  geom_text(aes(y=58,x=24),label="median",cex=3.8)+
  coord_flip()
w_plot +
  geom_linerange(aes(ymin = q1_age, ymax = q3_age),color = "#f3d478",
                 size = 5, alpha = 0.8) +
  geom_point(fill = "#ed3324", colour = "white", size = 3, shape = 21) +
  geom_point(aes(y=53,x=24),fill = "#ed3324", colour = "white", size = 3, shape = 21) +
  geom_text(aes(y=58,x=24),label="median",cex=3.8)+
  geom_text(aes(y=27,x=16),label="25th",cex=3.8)+
  geom_text(aes(y=49,x=16),label="75th percentile",cex=3.8)+
  geom_point(aes(y=24,x=16),shape=17)+
  geom_point(aes(y=56,x=16),shape=17)+
  coord_flip()
head(babynames)
babynames %>%
  filter(name == "Taylor") %>%
  group_by(year)
babynames1 <- babynames %>%
  filter(name == "Taylor") %>%
  group_by(year) %>%
  summarise(
    N = n(), # N is the number of rows for each name and each year
    total = sum(n), # Note that n is a variable in the babynames data frame
    boys = sum(ifelse(sex == "M", n, 0))
  )
babynames1

#1 

babynames2 <- babynames %>%
  filter(name == "Margaret") %>%
  group_by(year) %>%
  summarise(
    N = n(), # N is the number of rows for each name and each year
    total = sum(n), # Note that n is a variable in the babynames data frame
    boys = sum(ifelse(sex == "M", n, 0))
  )
babynames2

#2

IQR(babynames$name, 0.75)

#3

#4

#5

#6
com_fem <- BabynamesDist %>% #com_fem stands for "common female"
  filter(sex == "M") %>%
  group_by(name) %>%
  filter(est_alive_today>0) %>%
  summarise(
    est_num_alive = sum(est_alive_today),
    q1_age = wtd.quantile(age_today, est_alive_today, probs = 0.25),
    median_age = wtd.quantile(age_today, est_alive_today, probs = 0.5),
    q3_age = wtd.quantile(age_today, est_alive_today, probs = 0.75)
  ) %>%
  arrange(desc(est_num_alive)) %>%
  head(25)
com_fem
w_plot <- ggplot(
  data = com_fem,
  aes(x = reorder(name, -median_age), y = median_age)) +
  xlab(NULL) +
  ylab("Age (in years)") +
  ggtitle("Youngest Male Names")
w_plot +
  geom_linerange(
    aes(ymin = q1_age, ymax = q3_age),
    color = "#f3d478",
    size = 5,
    alpha = 0.8
  ) +
  coord_flip()
w_plot +
  geom_linerange(aes(ymin = q1_age, ymax = q3_age),color = "#f3d478",
                 size = 5, alpha = 0.8) +
  geom_point(fill = "#ed3324", colour = "white", size = 3, shape = 21) +
  geom_point(aes(y=53,x=24),fill = "#ed3324", colour = "white", size = 3, shape = 21) +
  geom_text(aes(y=58,x=24),label="median",cex=3.8)+
  coord_flip()
w_plot +
  geom_linerange(aes(ymin = q1_age, ymax = q3_age),color = "#f3d478",
                 size = 5, alpha = 0.8) +
  geom_point(fill = "#ed3324", colour = "white", size = 3, shape = 21) +
  geom_point(aes(y=53,x=24),fill = "#ed3324", colour = "white", size = 3, shape = 21) +
  geom_text(aes(y=58,x=24),label="median",cex=3.8)+
  geom_text(aes(y=27,x=16),label="25th",cex=3.8)+
  geom_text(aes(y=49,x=16),label="75th percentile",cex=3.8)+
  geom_point(aes(y=24,x=16),shape=17)+
  geom_point(aes(y=56,x=16),shape=17)+
  coord_flip()

#7



#8


