library(yardstick)
library(ggplot2)
# RIDGE

ridge <-matrix(c(
         139,0,   5,   0,   0,   1,   2,   0,   2,   4,
         0,151,   2,   0,   1,   0,   2,   5,   5,   1,
         0,0, 130,   5,   2,   0,   1,   1,   2,   0,
         1,0,   1, 127,   0,   7,   0,   0,   3,   1,
         1,0,   2,   0, 142,   2,   2,   0,   1,   2,
         1,2,   1,  10,   0, 133,   1,   0,  11,   1, 
         3, 0,   5,   0,   1,   2, 136,   0,   0,   0,
         1, 0,   0,   5,   0,   0,   1, 137,   0,   7,
         0, 0,   7,   2,   2,   5,   2,   0, 124,   1,
         1, 1,   0,   3,   6,   1,   0,   4,   1, 132
         ), ncol = 10, byrow = T)

ridge_cm <- conf_mat(ridge)
rownames(ridge_cm[["table"]]) <- c("0","1","2","3","4","5","6","7","8","9")
colnames(ridge_cm[["table"]]) <- c("0","1","2","3","4","5","6","7","8","9")

autoplot(ridge_cm, type = "heatmap") +
  scale_fill_gradient(low="#D6EAF8",high = "#2E86C1") +
  labs(x="Valor Verdadeiro",
       y = "Valor Predito",
       fill = "Frequência")


# LASSO
lasso <- matrix(c(139,0,  3,   0,   0,   0,   2,   0,   2,   4,
         0,149,   1,   0,   2,   0,   2,   4,  6,   1,  
         0, 0, 130,   4,   1,   0,   0,   3,   2,   0,  
         1,1,   4, 126,   0,   6,   0,   0,   3,   2, 
         1,0,   1,   1, 142,   3,   1,   0,   1,   2, 
         1,1,   1,  11,   0, 132,   1,   0,   7,   2, 
         2,0,   3,   0,   2,   3, 138,   0,   0,   1, 
         2,0,   1,   6,   0,   1,   0, 134,   0,  10, 
         0,2,   9,   1,   2,   6,   3,   0, 127,   1, 
         1,1,  0,   3,   5,   0,   0,   6,   1, 126), ncol = 10, byrow = T)

lasso_cm <- conf_mat(lasso)
rownames(lasso_cm[["table"]]) <- c("0","1","2","3","4","5","6","7","8","9")
colnames(lasso_cm[["table"]]) <- c("0","1","2","3","4","5","6","7","8","9")

autoplot(lasso_cm, type = "heatmap") +
  scale_fill_gradient(low="#D6EAF8",high = "#2E86C1") +
  labs(x="Valor Verdadeiro",
       y = "Valor Predito",
       fill = "Frequência")

