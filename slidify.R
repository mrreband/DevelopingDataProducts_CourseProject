require(devtools)
install_github("slidify", "ramnathv")
install_github("ramnathv/slidifyLibraries")

install.packages("stringr")
library(slidify)

author("DevelopingDataProducts_CourseProject")

#Write in RMarkdown, separating slides with a blank line followed by three dashes ---.

slidify("index.Rmd")

publish(user = "USER", repo = "REPO")
