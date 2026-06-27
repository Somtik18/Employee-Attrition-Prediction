hr <- read.csv("data/raw/WA_Fn-UseC_-HR-Employee-Attrition.csv")

tapply(hr$MonthlyIncome,
       hr$Attrition,
       mean)

boxplot(MonthlyIncome ~ Attrition,
        data = hr,
        main = "Monthly Income vs Attrition",
        xlab = "Attrition",
        ylab = "Monthly Income")

png("outputs/figures/monthly_income_attrition.png",
    width = 800,
    height = 600)

boxplot(MonthlyIncome ~ Attrition,
        data = hr,
        main = "Monthly Income vs Attrition",
        xlab = "Attrition",
        ylab = "Monthly Income")

dev.off()