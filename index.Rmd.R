library(tidyverse)

glimpse(mtcars)


select(mtcars, mpg, drat, cyl)
select(mtcars, am:carb)
select(mtcars, hello_world = mpg)
rename(mtcars, hello_world = mpg)

## Practice Class Assignments Feb. 11, 2021

#mpg is less than 20 AND greater than 14
filter(mtcars, mpg < 20 & mpg > 14) %>%
  rename(hello = mpg)
#filter rows in which cyl is equal to 6. Use ==
filter(mtcars, cyl == 6)

#filter rows mpg is greater than 20 OR disp is less than 200
filter(mtcars, mpg > 20 | disp < 200)

####REview below and fix
mtcars %>%
  select(mpg) %>%
  mutate(mpg_x2 = mpg * 2)
mutate(select(mtcars, mpg), mpg_x2 = mpg * 2)


mtcars %>%
  select(., mpg) %>%
  mutate(., mpg_c = mpg - mean(mpg))



##Challenge problem use the if_else to name it good or bad.
mtcars %>%
  select(., mpg) %>%
  mutate(., value = if_else(mpg > 18, "good", "bad"))
    
  ## Practice questions for summarize()
mtcars %>%
  summarize(mean_mpg = mean(mpg))

mtcars %>%
  mutate(mpg = mean(mpg))

mtcars %>%
  group_by(cyl) %>% 
  mutate(mean_mpg = mean(mpg))

mtcars %>%
  group_by(cyl) %>% 
  summarize(mean_mpg = mean(mpg)) %>% 
  arrange(desc(mean_mpg))


mtcars %>%
  summarize(., mtcars)

#####Feb 18 classwork
library(tidyverse)
library(untidydata)

pre_post %>%
separate(data = .,
         col = spec,
         into = c("group", "condition"),
         sep = "_"
  
  
         
  pre_post %>%
    unite(., col = "silly", c("id", "spec"), sep = "_") )
  

## pivot_longer
  pre_post %>%
    pivot_longer(c(.,cols = c("test1", "Test2"), names_to = "pre/post" values_to = score"))
  
  

## pivot_wider
  language_diversity %>% 
  pivot_wider(
  names_from = Measurement, 
  values_from = Value
  ) %>%
  ggplot(., aes(x = log(Area), Langs)) +
  geom_point() +
  geom_smooth(method = "glm"")
  
  
  
