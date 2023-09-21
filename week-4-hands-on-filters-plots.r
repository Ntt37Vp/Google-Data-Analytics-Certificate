# title: 'Lesson 3: Filters and Plots'
# file: Course 7 > Week 4 > Lesson 3_Filters.Rmd

# install.packages('ggplot2')
# library(ggplot2)
# install.packages('tidyverse')
# library(tidyverse)

# hotel_bookings <- read.csv("hotel_bookings.csv")
# head(hotel_bookings)
# colnames(hotel_bookings)



# ggplot(data = hotel_bookings) +
#   geom_point(mapping = aes(x = lead_time, y = children))

# ggplot(data = hotel_bookings) +
#   geom_bar(mapping = aes(x = hotel, fill = market_segment))

# ggplot(data = hotel_bookings) + geom_bar(mapping = aes(x = hotel)) + facet_wrap(~market_segment)

# onlineta_city_hotels <- filter(hotel_bookings,
#                            (hotel=="" &
#                              hotel_bookings$market_segment==""))
# View(onlineta_city_hotels)

# ANOTHER WAY
# onlineta_city_hotels_v2 <- hotel_bookings %>%
#   filter(hotel=="City Hotel") %>%
#   filter(market_segment=="Online TA")
# View(onlineta_city_hotels_v2)
# ggplot(data = variable_name) +
#   geom_point(mapping = aes(x = lead_time, y = children))
