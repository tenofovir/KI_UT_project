#Write a function that calculates the ratio of the mean and the median of a given vector. This is a helpful measure to detect data with outlying values.
calc_ratio_mean_median <- function(x){
  mean_x <- mean(x)
  median_x <- median(x)
  ratio <- mean_x / median_x
  return(ratio)
}
#Write a function that ignores the lowest and the highest value from a given vector and calculate the mean.
calc_remove_lowest_largest_mean <- function(x){
  x_sorted <- sort(x)
  x_removed <- x_sorted[2:(length(x_sorted)-1)]
  mean_removed_x <- mean(x_removed)
  return(mean_removed_x)
}
#question3
#Pipes (%>%) are useful for simplifying code by allowing for chaining operations. However, they can be less efficient for certain operations and can make code harder to read when overused. Avoid using pipes when it creates ambiguity, adds unnecessary complexity or leads to inefficient code.

#question4
#Using the apply function helps me to process multiple sets of data efficiently in bulk, and can significantly improve the efficiency of processing large data sets using a variety of self-built functions
