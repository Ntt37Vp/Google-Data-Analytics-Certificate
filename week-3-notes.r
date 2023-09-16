# Week 3

# install entire "tidyverse" or just install dplyr;
# load dplyr by

install.packages("tidyverse")
library(dplyr)

# install Tmisc (Anscombe's Quartet dataset)
install.packages("Tmisc")
# load Tmisc
library(Tmisc)

data(quartet)
View(quartet)

quartet %>%
    group_by(set) %>%
    summarize(mean(x), sd(x), mean(y), sd(y), cor(x, y))

# Output:
# A tibble: 4 × 6
#   set   `mean(x)` `sd(x)` `mean(y)` `sd(y)` `cor(x, y)`
#   <fct>     <dbl>   <dbl>     <dbl>   <dbl>       <dbl>
# 1 I             9    3.32      7.50    2.03       0.816
# 2 II            9    3.32      7.50    2.03       0.816
# 3 III           9    3.32      7.5     2.03       0.816
# 4 IV            9    3.32      7.50    2.03       0.817


# Plot
ggplot(quartet, aes(x, y)) +
    geom_point() +
    geom_smooth(method = lm, se = FALSE) +
    facet_wrap(~set)


# the DatasauRus
install.packages("datasauRus")
# run the code
library("datasauRus")

ggplot(datasaurus_dozen, aes(x = x, y = y, colour = dataset)) +
    geom_point() +
    theme_void() +
    theme(legend.position = "none") +
    facet_wrap(~dataset, ncol = 3)

### Organizing Data ###
# library(tidyverse)
# head(penguins)
# penguins %>% arrange(bill_length_mm)
# penguins %>% arrange(-bill_length_mm)

# penguins2 <- penguins %>% arrange(-bill_length_mm)
# view(penguins2)
# penguins %>% group_by(island) %>% drop_na() %>% summarize(min_bill_length = mean(bill_length_mm))
# penguins %>% group_by(island) %>% drop_na() %>% summarize(max_bill_len = max(bill_length_mm))
# penguins %>% filter(species == "Adelie")



##### Week 3 Final Exam - Failed #####
# 1 - Tibbles automatically only preview first 10 rows, Only previews as many columns as fit on screen
# 2 - head()
# 3 - using glimpse() to ToothGrowth dataset, how many diff data types? not 3.
# 4 - rename_with(tolower, cars)
# 5 - penguins %>%
#   filter(species == "Gentoo")

# 6 - penguins %>%
# drop_na() %>%
# group_by(species) %>%
# using summarize() and min() functions, find the min val for the var bill_depth_mm

# 7 - mutate(salary_data, hourly_salary = wage / 40)
# 8 - unite(weather, "display_temp", temp, unit, sep = " Degrees ")
# 9 - Correlation is the statistical measure to show how strong the relationship is between vars
# 10 - BIAS() fucnc shows the avg diff between ACTUAL and PREDICTED

#### Week 4 Finals - PASSED! ###
#1. Tibble - use instead of df to make it readable
#2. str() ? - to view # of rows, var, type of data within a given col
#3. 60 > glimpse(ToothGrowth)
#4. rename() func >
#5. filter(species == "Adelie")
#6. 231 > summarize(max_length_mm = max(flipper_length_mm))
#7. separate(athletes, record, into=c("wins”, “losses”), sep="-")
#8. unite(customers, “phone_number”, area_code, phone_num, sep=”-”)
#9. Std dev
#10. bias()
