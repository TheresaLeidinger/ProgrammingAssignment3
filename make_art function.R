make_art <- function(seed = 1234, density = 500, width = 400, color_choice = c("#ffc8dd", "#ffafcc", "#ffB6C1", "#FF7276", "#FF7377"), circle = F){
  require(ggplot2)
  set.seed(seed)
  n <- density
  my_art_data <- data.frame(x0 <- runif(n),
                            y0 <- runif(n),
                            x1 <- x0 + runif(n, min = -.2, max = .2),
                            y1 <- y0 +
                              runif(n, min = -.2, max = .2),
                            shade <- runif(n),
                            size <- runif(n))
  ggplot(my_art_data, aes(
    x = x0,
    y = y0,
    xend = x1,
    yend = y1,
    colour = shade,
    size = size
  )) +
    geom_segment(show.legend = FALSE) +
    scale_y_continuous(expand = c(0, 0)) +
    scale_x_continuous(expand = c(0, 0)) + 
    scale_color_gradientn(colours = color_choice) + 
    scale_size(range = c(0, width)) + 
    theme_void() +
    if(circle == T){
      coord_polar()
    }
}