library(randomForest)

hr <- read.csv("data/raw/WA_Fn-UseC_-HR-Employee-Attrition.csv")

names(hr)[1] <- "Age"

hr$Attrition <- as.factor(hr$Attrition)

set.seed(123)

train_index <- sample(1:nrow(hr),
                      0.7 * nrow(hr))

train_data <- hr[train_index, ]
test_data <- hr[-train_index, ]

rf_model <- randomForest(
  Attrition ~ Age + MonthlyIncome +
    DistanceFromHome +
    JobSatisfaction +
    OverTime,
  data = train_data,
  ntree = 100
)

rf_pred <- predict(
  rf_model,
  newdata = test_data
)

table(Predicted = rf_pred,
      Actual = test_data$Attrition)