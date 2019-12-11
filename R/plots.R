#taking a map
plot_maker <- function() {
moscow_map <<- ggmap(get_googlemap(c(37.62, 55.76),
                                    zoom = 10,
                                    scale = 2,
                                    maptype = "terrain",
                                    color = "color"))
#creating plot version 1
soil_poll_plot <<- moscow_map +
  geom_point(data = soil_df,
             aes(x = lon,
                 y = lat,
                 color = soil_df$level),
             alpha = 0.7,
             size = 3) +
  ggtitle("Pollution level")
}
