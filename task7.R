
guy <- read.csv("magic_guys.csv")
sith <- subset(guy, species == "sith")
jedi <- subset(guy, species == "jedi")
hist(jedi$length, main = "Body length of jedi", xlab = "length")
hist(sith$length, main = "Body length of sith", xlab = "length")
break1 <- seq(60,180,15)
hist(sith$length, main = "Body length of sith", xlab = "length", breaks = break1)
hist(sith$length, main = "Body length of sith", xlab = "length", breaks = break1)


boxplot(sith$length, main = "Body length of sith", xlab = "length")
boxplot(jedi$length, main = "Body length of jedi", xlab = "length")

#question2
gene <- read.table("microarray_data.tab",header = TRUE,sep = "\t")
nrow(gene)
#[1] 553
ncol(gene)
#[1] 1000
#counting missing value for each col
missing_values_per_gene <- apply(gene, 2, function(x) sum(is.na(x)))
hist(missing_values_per_gene, xlab = "Missing Values", ylab = "Number of genes with missing values",main = "Missing Values per Gene")
#Find the genes for which there are more than X% (X=10%, 20%, 50%) missing values.
percent_missing_values_per_gene <- apply(gene, 2, function(x) mean(is.na(x)) * 100)
X_precent <- 10
genes_with_X_percent_missing_values <- rownames(microarray_data)[percent_missing_values_per_gene > X_percent]
#replace missing values 
replace_microarray_data <- apply(gene, 2, function(x) {
  mean1 <- mean(x, na.rm = TRUE)
  replace(x, is.na(x), mean)
})
