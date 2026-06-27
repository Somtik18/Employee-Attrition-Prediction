hr <- read.csv("data/raw/WA_Fn-UseC_-HR-Employee-Attrition.csv")

table(hr$OverTime, hr$Attrition)

barplot(table(hr$OverTime, hr$Attrition),
        beside = TRUE,
        legend = TRUE,
        main = "OverTime vs Attrition",
        xlab = "OverTime",
        ylab = "Number of Employees")

png("outputs/figures/overtime_attrition.png",
    width = 800,
    height = 600)

barplot(table(hr$OverTime, hr$Attrition),
        beside = TRUE,
        legend = TRUE,
        main = "OverTime vs Attrition",
        xlab = "OverTime",
        ylab = "Number of Employees")

dev.off()