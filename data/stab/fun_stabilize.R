stabilize <- function(model, points, thres = 0.5){
  library(nnet)
  input = as.numeric(dist(points))
  v = as.numeric(predict(model, input)[,1])
  
  if (v>thres){
    return (points)
  }else{
    return (matrix(rep(points[1,], 10), byrow = T, ncol = 2))
  }
}

load("2021-01-12_ML/ML_model_with_10_points.RData")
output = stabilize(model = ir, points = matrix(c(rnorm(10,0,0.1), rep(0,10)), byrow = F, ncol = 2))
output = stabilize(model = ir, points = matrix(c(seq(from=0.2, to=2, by=0.2), rep(0,10)), byrow = F, ncol = 2))
