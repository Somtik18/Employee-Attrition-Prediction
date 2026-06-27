hr <- read.csv("data/raw/WA_Fn-UseC_-HR-Employee-Attrition.csv")

names(hr)[1] <- "Age"

tapply(hr$DistanceFromHome,
       hr$Attrition,
       mean)
boxplot(DistanceFromHome ~ Attrition,
        data = hr,
        main = "Distance From Home vs Attrition",
        xlab = "Attrition",
        ylab = "Distance From Home")

png("outputs/figures/distance_attrition.png",
    width = 800,
    height = 600)

boxplot(DistanceFromHome ~ Attrition,
        data = hr,
        main = "Distance From Home vs Attrition",
        xlab = "Attrition",
        ylab = "Distance From Home")

dev.off()