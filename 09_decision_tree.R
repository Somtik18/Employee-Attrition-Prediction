library(rpart)

hr <- read.csv("data/raw/WA_Fn-UseC_-HR-Employee-Attrition.csv")

names(hr)[1] <- "Age"

hr$Attrition <- as.factor(hr$Attrition)

set.seed(123)

train_index <- sample(1:nrow(hr),
                      0.7 * nrow(hr))

train_data <- hr[train_index, ]
test_data <- hr[-train_index, ]

tree_model <- rpart(
  Attrition ~ Age + MonthlyIncome +
    DistanceFromHome +
    JobSatisfaction +
    OverTime,
  data = train_data,
  method = "class"
)
print(tree_model)

tree_pred <- predict(
  tree_model,
  newdata = test_data,
  type = "class"
)
table(Predicted = tree_pred,
      Actual = test_data$Attrition)