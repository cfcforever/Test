Trois paramètres dans la function de stabilize:
- model: un modèle de machine learning, dont le fichier "ML_model_with_10_points.RData"
- points: sous la forme matricielle dont sa dimension est égale à 10x2
  un exemple des dix points fixes: matrix(c(rnorm(10,0,0.1), rep(0,10)), byrow = F, ncol = 2)
  un exemple des dix points en movement: matrix(c(seq(from=0.2, to=2, by=0.2), rep(0,10)), byrow = F, ncol = 2)