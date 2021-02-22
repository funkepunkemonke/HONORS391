#1. Load the data
library(yarrr);     pirates<-pirates
#2. Get to know the data
View(pirates); summary(pirates); head(pirates); str(pirates)
#3. Look at the names of the dataframe
names(pirates)
#4. What was the mean number of parrots per pirate?
mean(pirates$parrots)
#5. What was the median sword time?
median(pirates$sword.time)
#6. What percent of pirates have an eye patch?
mean(pirates$eyepatch == 1)*100
#7. sword time in minutes rather than seconds.
pirates$sword_m<-pirates$sword.time/60
#8. median sword time (in minutes)
median(pirates$sword_m)
#9. sexes of the first 10 pirates
table(pirates$sex[1:10])
#10. data for the 50th pirate
pirates[50,]
#11. mean sword time for females
with(subset(pirates, sex == "female"), mean(sword.time))
#12. mean sword time for pirates less than 27 years old
with(subset(pirates, age < 27), mean(sword.time))
#13. mean sword time for females with tattoos
with(subset(pirates, sex == "female" & tattoos > 0), mean(sword.time))
#14. mean sword time for males over 27 years old without tattoos
with(subset(pirates, sex == "male" & age > 27 & tattoos == 0), mean(sword.time))
#15a. same or different? v1 and v3 are vectors, while v2 is a dataframe
v1 <- pirates$sword.time
v2 <- pirates["sword.time"]
v3 <- pirates[,names(pirates) == "sword.time"]
#15b. same or different? vA is a vector while vB is a dataframe
vA <- pirates$sword.time
vB <- subset(pirates, select = "sword.time")
#15c. can you explain why? mean(vB) doesn't work because you can't take the mean of a dataframe.
mean(vA)
mean(vB)