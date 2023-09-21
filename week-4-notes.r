# Week 4 - Viz in R

# Common viz packages:
# ggplot2
# Ploty
# Lattice
# RGL

# Hands On - 1
# install.packages("ggplot2")
# install.packages("palmerpenguins")
# library(ggplot2)
# library(palmerpenguins)
# data("penguins")
# View(penguins)
# ggplot(data=penguins) + geom_point(mapping=aes(x=flipper_length_mm, y=body_mass_g))
# ggplot(data=penguins)



# Getting Started with ggplot()
# install, # library then call the func
# format: ggplot(data=) + geom_point(mapping=aes())
# library(ggplot2)
# library(palmerpenguins)
# data("penguins")
# View(penguins)
# ggplot(data = penguins) +
#     geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g))
# ggplot(data = penguins) +
#     geom_point(mapping = aes(x = bill_length_mm, y = bill_depth_mm, color = species))
# ggplot(data = penguins) +
#     geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color = species, shape = species, alpha = species))
# ggplot(data = penguins) +
#     geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color = species, shape = species, alpha = species), color = "purple")

# using GEOM_SMOOTH
# ggplot(data=penguins) + geom_smooth(mapping=aes(x=flipper_length_mm, y=body_mass_g))

# ggplot(data = diamonds) + geom_bar(mapping = aes(x=cut))
# ggplot(data = diamonds) + geom_bar(mapping = aes(x=cut, color=cut))
# ggplot(data = diamonds) + geom_bar(mapping = aes(x=cut, fill=cut))

# Aesthetic and Facets
# ggplot(data = penguins) + geom_point(mapping = aes(x=flipper_length_mm, y=body_mass_g, color=species)) + facet_wrap(~species)
# ggplot(data=diamonds) + geom_bar(mapping = aes(x=cut, fill=cut)) + facet_wrap(~cut)
# ggplot(data = penguins) + geom_point(mapping = aes(x=flipper_length_mm, y=body_mass_g, color=species)) + facet_grid(sex~species)
# ggplot(data = penguins) + geom_point(mapping = aes(x=flipper_length_mm, y=body_mass_g, color=species)) + facet_grid(~species)
# ggplot(data = penguins) + geom_point(mapping = aes(x=flipper_length_mm, y=body_mass_g, color=species)) + facet_grid(~sex)


# Hands On Activity
# Course 7 > Week 4 > Lesson 3 Aesthetics.rmd
# hotel_bookings <- read.csv("hotel_bookings.csv")
# read(hotel_bookings)
# library(ggplot2)
# ggplot(data = hotel_bookings) +
#   geom_bar(mapping = aes(x = distribution_channel))

# Practice Test
# Aesthetic that contributes : size, color, shape
# facet_wrap() lets you display smaller groups or subsets
# In ggplot(data = hotel_bookings) +
#   geom_bar(mapping = aes(x = distribution_channel)), the X is the "aesthetic" or the x axis
# geom_jitter()


### ANNOTATION LAYER ###
# use the LABS() layer func
# ggplot(data = penguins) +
#     geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color = species)) +
#     facet_grid(~sex) +
#     labs(title = "Penguins: Body Mass vs Flipper Length", subtitle = "I'm a subtitle")+
#      annotate("text", x = 220, y = 3500, label = "The Gentoos are the largest")
