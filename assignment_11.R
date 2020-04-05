tukey_multiple <- function(x) {
  outliers <- array(TRUE,dim=dim(x))
  for (j in 1:ncol(x))
  {
    outliers[,j] <- outliers[,j] && tukey.outlier(x[,j])
  }
  outlier.vec <- vector(length=nrow(x))
  for (i in 1:nrow(x)) {
    outlier.vec[i] <- all(outliers[i,])
  } 
  return(outlier.vec) }



#setwd("/Users/anilpinnamaneni/Documents/R/Assignment_9/")
#x = read.csv("melanoma.csv")
#outliers <- array(TRUE,dim=dim(x))
#outlier.vec <- vector(length=nrow(x))
#for (i in 1:nrow(x)){
#  outlier.vec[i] <- all(outliers[i,])
#}
tukey_multiple <- function(x) {
  outliers <- array(TRUE,dim=dim(x))
  for (j in 1:ncol(x))
  {
    outliers[,j] <- outliers[,j] && tukey.outlier(x[,j])
  }
  outlier.vec <- vector(length=nrow(x))
  for (i in 1:nrow(x))
  { outlier.vec[i] <- all(outliers[i,]) } return(outlier.vec) }
