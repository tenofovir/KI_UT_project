
> sqrt(10)
[1] 3.162278
> log2(32)
[1] 5
> sum(1:1000)
[1] 500500
> sum_even <- 0
> for (i in 2:1000) {if(i %% 2 == 0){ sum_even <- sum_even +i}}
> sum_even
[1] 250500
> gene_n <- 100
> pair <- gene_n*(gene_n-1)/2
> pair
[1] 4950
> r <- 3
> arrangements <- factorial(gene_n) / (factorial(r) * factorial(gene_n-r))
> arrangements
[1] 161700