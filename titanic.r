df_titanic <- read_csv("titanic.csv")
view(df_titanic)
glimpse(df_titanic)

library(tidyverse)

df_titanic %>% 
  filter(!complete.cases(.)) %>% 
  view()

 df_titanic$adult_male <- as.factor(df_titanic$adult_male)
 class(df_titanic$adult_male)
 
  df_titanic %>% 
    mutate(adult_male = recode(adult_male, "TRUE" = 0, 
                               "FALSE" = 1)) %>% 
    view()
  
  df_titanic$alone <- as.factor(df_titanic$alone)
  class(df_titanic$alone)
  
  
  df_titanic %>% 
    mutate(alone = recode(alone, "TRUE" = 1, "FALSE" = 2)) %>% 
    view()
  
  df_titanic$age <- as.numeric(df_titanic$age)
  
  a <- mean(df_titanic$age, na.rm = TRUE)
  a
  
  # df_titanic <- df_titanic %>% mutate(....) %>% view()
  df_titanic %>% 
    mutate(age = replace_na(age, a)) %>% 
    view()
  # to remove a column
  df_titanic <- subset(df_titanic, select = -deck)
  
  df_titanic %>% 
    select(sex, age) %>% 
    filter(!complete.cases(.)) %>% 
    view()
  
  df_titanic %>% 
    rename("gender" = "who") %>% 
    view()
  
  ggplot(df_titanic, aes(x=age)) +
    geom_histogram() + labs(x="age of characters")
  
  ggplot(df_titanic, aes(y=age)) +
    geom_boxplot()
  
  df_titanic %>% 
    drop_na(age) %>% 
    ggplot(aes(x=age)) +
    geom_histogram() +
    labs(title = "Age of Passengers on Titanic", 
         x="Age", y="Number of Passengers" ) +
    theme_classic()
  
  df_titanic %>% 
    drop_na(alive, who) %>% 
    ggplot(aes(x=alive)) +
    geom_bar() +
    labs(title = "Age of Passengers on Titanic", 
         x="Survive", y="sex" ) +
    theme_classic()
  
  df_titanic %>% 
    drop_na(embark_town, who) %>% 
    ggplot(aes(x=embark_town)) +
    geom_bar() +
    labs(title = "Embark Town of Passengers on Titanic by Sex", 
         x="Embark Town", y="sex" ) +
    theme_grey()
  
  df_titanic %>% 
    drop_na(embark_town, who) %>% 
    ggplot(aes(x=embark_town)) +
    geom_bar() +
    labs(title = "Embark Town of Passengers on Titanic by Sex", 
         x="Embark Town", y="sex" ) +
    theme_grey()
  
  
  
  df_titanic %>% 
    drop_na(age, fare) %>% 
    ggplot(aes(age, fare)) +
    geom_point() +
    labs(title = "Age and Fares paid on Titanic", 
         x="Age", y="Fares" ) +
    theme_classic()
  
  df_titanic %>% 
    drop_na(age, fare) %>%
    filter(fare < 200) %>% 
    ggplot(aes(age, fare)) +
    geom_point() +
    labs(title = "Age and Fares paid on Titanic", 
         x="Age", y="Fares" ) +
    theme_classic()
  
  df_titanic %>% 
    drop_na(age, fare) %>%
    filter(fare < 70) %>% 
    ggplot(aes(age, fare)) +
    geom_point() +
    labs(title = "Age and Fares paid on Titanic", 
         x="Age", y="Fares" ) +
    theme_dark()
  
  df_titanic %>% 
    drop_na(age, fare) %>%
    filter(fare < 40) %>% 
    ggplot(aes(age, fare)) +
    geom_point() +
    geom_smooth() +
    labs(title = "Age and Fares paid on Titanic", 
         x="Age", y="Fares" ) +
    theme_grey()
  
  df_titanic %>% 
    drop_na(age, fare) %>%
    filter(fare < 40) %>% 
    ggplot(aes(age, fare)) +
    geom_point() +
    geom_smooth(method = "lm" ) +
    labs(title = "Age and Fares paid on Titanic", 
         x="Age", y="Fares" ) +
    theme_grey()
  
  df_titanic %>% 
    drop_na(age, fare) %>%
    ggplot(aes(age, embark_town,fill = who )) +
    geom_boxplot() +
    labs(title = "Age by Sex and Departure on Titanic", 
         x="Age", y="Departure" ) +
    theme_grey()
  
  df_titanic %>% 
    drop_na(age, fare, embark_town) %>%
    ggplot(aes(age, embark_town,fill = who )) +
    geom_boxplot() +
    labs(title = "Age by Sex and Departure on Titanic", 
         x="Age", y="Departure" ) +
    theme_light()
  
  df_titanic %>% 
    drop_na(class, who) %>% 
    ggplot(aes(x=class)) +
    geom_bar() +
    labs(title = "Age of Passengers on Titanic", 
         x="Class", y="Survive" ) +
    theme_classic()
  
  df_titanic %>% 
    drop_na(class, alive) %>%
    filter(alive %in% c("no")) %>% 
    ggplot(aes(x=class)) +
    geom_bar(alpha=0.5) +
    labs(title = "Death by Class on Titanic", 
         x="Class", y=" Not Survive" ) +
    theme_light()
  
  df_titanic %>% 
    drop_na(embark_town, who) %>% 
    ggplot(aes(x=embark_town, fill=who)) +
    geom_bar() +
    labs(title = "Who by Departure on Titanic", 
         x="Departure", y="Who" ) +
    theme_classic()
  
  df_titanic %>% 
    drop_na(age, adult_male, alive) %>%
    ggplot(aes(age, adult_male, fill = alive )) +
    geom_boxplot() +
    labs(title = "Male Adult suvived or not on Titanic", 
         x="Age", y="Adult Male" ) +
    theme_light()
  
  df_titanic %>% 
    drop_na(age, adult_male, alive) %>%
    filter(alive %in% c("no")) %>%
    ggplot(aes(age, adult_male, fill = alive )) +
    geom_boxplot() +
    labs(title = "Male Adult survivor by Age on Titanic", 
         x="Age", y="Adult Male" ) +
    theme_light()
  
  df_titanic %>% 
    drop_na(survived) %>% 
    ggplot(aes(x=survived)) +
    geom_histogram() +
    labs(title = "No of Passengers that survived on Titanic", 
         x="Survived", y="Number of Passengers" ) +
    theme_classic()
  
  df_titanic %>% 
    drop_na(embark_town, alive) %>% 
    filter(alive %in% c(alive="no")) %>% 
    ggplot(aes(x=embark_town, fill=who)) +
    geom_bar(alpha = 0.4) +
    labs(title = "Death by Departure on Titanic", 
         x="Departure", y="Death" ) +
    theme_classic()
  
  df_titanic %>% 
    drop_na(alive, sex) %>% 
    ggplot(aes(x=alive, fill=sex)) +
    geom_bar() +
    labs(title = "Gender of those who survived on Titanic", 
         x="Alive", y="Gender" ) +
    theme_classic()
  
  