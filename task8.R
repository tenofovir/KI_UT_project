#Extract summary statistics (mean, median and maximum) for the following variables from the ‘chromosome’ data: variations, protein coding genes, and miRNAs.
library(tidybiology)
library(tidyverse)
chromosome_summary <- chromosome %>%
  summarise(
    variations_mean = mean(variations),
    variations_median = median(variations),
    variations_max = max(variations),
    protein_coding_genes_mean = mean(protein_codinggenes),
    protein_coding_genes_median = median(protein_codinggenes),
    protein_coding_genes_max = max(protein_codinggenes),
    miRNAs_mean = mean(mi_rna),
    miRNAs_median = median(mi_rna),
    miRNAs_max = max(mi_rna)
  )
chromosome_summary
#How does the chromosome size distribute?
library(ggplot2)
ggplot(chromosome, aes(x = length_mm)) + geom_histogram(binwidth = 5, fill = "blue", color = "white") + labs(title = "Distribution of Chromosome Sizes", x = "Chromosome Size", y = "Count")
#Does the number of protein coding genes or miRNAs correlate with the length of the chromosome?
ggplot(chromosome, aes(x = length_mm, y = protein_codinggenes)) +
  geom_point() +
  labs(title = "Relationship between Chromosome Size and Protein Coding Genes", x = "Chromosome Size", y = "Protein Coding Genes")
ggplot(chromosome, aes(x = length_mm, y = mi_rna)) +
  geom_point() +
  labs(title = "Relationship between Chromosome Size and miRNA", x = "Chromosome Size", y = "miRNA")

#Calculate the same summary statistics for the ‘proteins’ data variables length and mass. Create a meaningful visualization of the relationship between these two variables by utilizing the ggplot2 package functions.
summary(proteins$length)
#Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
#2.0   251.0   414.0   557.2   669.0 34350.0 
summary(proteins$mass)
#Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
#260   27940   46140   62061   74755 3816030 
ggplot(proteins, aes(x = mass, y = length)) +
  geom_point() +
  labs(title = "Relationship between Protein Length and Mass", x = "Mass (kDa)", y = "Length (aa)")

gplot(proteins, aes(x = mass, y = length)) +
  +     geom_point(colour = "pink") +
  +     labs(title = "Relationship between Protein Length and Mass", x = "Mass (kDa)", y = "Length (aa)") + geom_smooth()