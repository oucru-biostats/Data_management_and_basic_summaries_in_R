img <- imager::load.image('Data_management_and_basic_summaries_in_R/Data_management_and_frequent_tasks/dcast-illustration.png')

par(mai = rep(0,4))
plot(img, axes=FALSE, ann=FALSE)
par(mai = default.par$mai)