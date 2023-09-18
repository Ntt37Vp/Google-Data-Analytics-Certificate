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
