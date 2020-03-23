#Input variables
#Edit these to specify the number of people and toilets in your household
people <- 1
toilets <- 1

#Do not edit below this line
#Functions
#This generates the Richard score
richard.score.function <- function(inputfactor)
{
  process.factor <- as.numeric(inputfactor)
  process.factor <- inputfactor*52.5
  process.factor <- process.factor/52
  process.factor <- process.factor^4.2
  process.factor <- log(process.factor)
  process.factor <- 1/process.factor
}

people <- as.numeric(people)
toilets <- as.numeric(toilets)

#Factoriate the inputs
factor <- toilets/people

#Produce Richard score
richarded <- richard.score.function(factor)
  
#Generate gamma distribution
toiletrolls <- gamma(richarded)

#Normalize number of toilet rolls
toiletrolls <- toiletrolls*0

#Output the number of toilet rolls
output.message <- paste(c("You need to stockpile ",toiletrolls," toilet rolls"),collapse="")
print(output.message)