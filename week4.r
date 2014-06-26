R Assignment:
1. 3 different ways to assign value to a variable:
x <- 2
y = 5
3 <- z

2. Use is.na() and sum() to count number of NA values in a vector
v <- c(1, 2, NA, 5, NA, 12, NA, 100)
sum(is.na(v))
[1] 3

3. 
The difference between library() and require():

> library(powell)
Warning message:
package ‘powell’ was built under R version 3.0.2 
require(cramer)
Loading required package: cramer
Loading required package: boot
Warning message:
package ‘cramer’ was built under R version 3.0.2 
> require(Defaults)
Loading required package: Defaults
Warning message:
In library(package, lib.loc = lib.loc, character.only = TRUE, logical.return = TRUE,  :
  there is no package called ‘Defaults’
  library(Defaults)
Error in library(Defaults) : there is no package called ‘Defaults’

 *** caught segfault ***
address 0x7c0, cause 'memory not mapped'

Possible actions:
1: abort (with core dump, if enabled)
2: normal R exit
3: exit R without saving workspace
4: exit R saving workspace
# here, I installed two packages: "powell" and "cramer" and loaded "powell" with library() and "cramer" with require(). When the package is already installed, the only difference is that require() gives you a message i.e. "Loading required package: cramer" and library() does not. When the package is not already installed, however, as the "Defaults" package is here, using require(Defaults) gives you a warning message that the package is not found, but using library(Defaults) actually causes R to crash (as shown above). So I'd prefer using require() mostly for that reason--if for some reason the package you're trying to load isn't installed, at least it won't cause R to abort!