id <- c(1:12)

before <- c(45,49,40,48,44,70,90,75,80,65,80,52)
after <- c(43, 50, 61, 44, 45, 20, 85, 65, 72, 65, 70, 75)
age <- c(20, 19, 22, 20, 27, 22, 22, 20, 25, 22, 24, 22)
sex <- rep(c("male", "female"), times = 6)
eye_color <- rep(c("blue", "brown"), each = 2, times = 3)


age_months <- age * 12
before <- before + 1
after <- after - 1
change <- after - before
average <- (before + after) / 2


length(id)
length(before)
length(after)
length(age)
length(sex)
length(eye_color)

age_sd <- sd(age)
age_median <- median(age)

table(sex)
table(sex) / sum(table(sex))

mean(sex)
before_mean <- mean(before)
after_mean <- mean(after)
after_mean - before_mean #or mean(after - before)
