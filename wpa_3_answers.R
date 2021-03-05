library (tidyverse)
matthews<-read.table("http://journal.sjdm.org/15/15909/data1.csv", header=T, sep=",")
write.table(matthews, file = "matthews.txt", sep="\t")
colnames(matthews)
mean(matthews$age)


# Using dplyr
matthews %>% 
  filter(gender_a == "female")   %>%     # Only include male pirates ..AND THEN..
  count()
71/190
matthews$gender_a <- NA  
matthews$gender_a[matthews$gender == 1] <- "male"
matthews$gender_a[matthews$gender == 2] <- "female"

mean(matthews$age[matthews$gender_a == "male"])
mean(matthews$age[matthews$gender_a == "female"])


aggregate(formula = age ~ gender_a,   
          data = matthews,                    
          FUN = mean) 

#9


matthews %>%
  group_by(gender_a) %>%
  summarise(
    N = n(),
    age_mean = mean(age)
  )


aggregate(formula = pcmore ~ income,
          FUN = median,
          data = matthews)
