img <- imager::load.image('pivot_demo.png')

par(mai = rep(0,4))
plot(img, axes=FALSE, ann=FALSE)
par(mai = default.par$mai)
