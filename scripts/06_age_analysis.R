hr <- read.csv("data/raw/WA_Fn-UseC_-HR-Employee-Attrition.csv")
names(hr)[1] <- "Age"

tapply(hr$ï..Age,
       hr$Attrition,
       mean)
boxplot(Age ~ Attrition,
        data = hr,
        main = "Age vs Attrition",
        xlab = "Attrition",
        ylab = "Age")

png("outputs/figures/age_attrition.png",
    width = 800,
    height = 600)

boxplot(Age ~ Attrition,
        data = hr,
        main = "Age vs Attrition",
        xlab = "Attrition",
        ylab = "Age")

dev.off()