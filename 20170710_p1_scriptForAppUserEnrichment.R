PR07161210_cruise <- read_excel("~/Documents/20170704_p1_customer.xlsx", sheet = "PR07161210")

appUser <- read_excel("~/Documents/20170719_p1_customerNumbers.xlsx", sheet = "nurNummern")



appUserRich <- semi_join(PR07161210_cruise, appUser, by = c("cruiseID" ,"Loyalty Card No")) %>%
  union(appUserRich)

# delete columns
PR07161210_cruise$X__8 <- NULL


write.csv(appUserRich, file = "~/Documents/20170711_rich")

PR07170429 <- appUserRich %>% filter(cruiseID %in% "PR07170429")


hist(appUserRich$Age, main = "age", col = "lightgreen", breaks = 50)

hist(PR07170415$Age, main = "age PR07170415", col = "lightgreen", breaks = 50)

hist(PR07170429_cruise$Age, main = "age PR07170429/Cruise", col = "lightgreen", breaks = 50)
hist(PR07170429$Age, col=scales::alpha('red',.5), breaks = 50)


customer <- union(PR07170107_cruise, customer, by = c("cruiseID", "Loyalty Card No"))