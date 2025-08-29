setwd("C:\\Users\\it24102242\\Downloads\\Lab 05-20250829")
#Q1
Delivery_Times<-read.table("Exercise - Lab 05.txt",header=TRUE)
print(Delivery_Times)

hist(Delivery_Times$Delivery,
     breaks = seq(20, 70, by = 5),
     right = FALSE,
     main = "Histogram of Delivery Times",
     xlab = "Delivery Times Minutes",
     ylab = "Frequency",
     col = "lightblue",
     border = "black")


hist_data <- hist(Delivery_Times$Delivery,
                  breaks = seq(20, 70, by = 5),
                  right = FALSE,
                  plot = FALSE)

cumulative_freq <- cumsum(hist_data$counts)


plot(hist_data$mids, cumulative_freq,
     type = "o",
     main = "Cumulative Frequency Polygon (Ogive)",
     xlab = "Delivery Times",
     ylab = "Cumulative Frequency",
     pch = 16,
     col = "blue")

