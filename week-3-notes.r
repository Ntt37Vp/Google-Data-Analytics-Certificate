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
ggplot(quartet,aes(x,y)) + geom_point() + geom_smooth(method=lm, se=FALSE) + facet_wrap(~set)


# the DatasauRus
install.packages('datasauRus') 
# run the code
library('datasauRus') 

ggplot(datasaurus_dozen,aes(x=x,y=y,colour=dataset))+geom_point()+theme_void()+theme(legend.position = "none")+facet_wrap(~dataset,ncol=3)