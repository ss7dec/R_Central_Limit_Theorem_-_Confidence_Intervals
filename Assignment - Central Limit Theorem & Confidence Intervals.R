#---------------Central Limit Theorem and Confidence Intervals----------------------------

#1. Examine the following normal Quantile plots carefully. Which of these plots indicates that the data
#...
#I. Are nearly normal?
#II. Have a bimodal distribution? (One way to recognize a bimodal shape is a "gap" in the
#                                  spacing of adjacent data values.)
#III. Are skewed (i.e. not symmetric) ?
#IV. Have outliers on both sides of the center?

# Ans1:
# I Are nearly normal?
# Ans: C

----------------------------------------------------------------------------

# II Have a bimodal distribution? (One way to recognize a bimodal shape is a "gap" in the
#                                 spacing of adjacent data values.)------
# Ans: D

--------------------------------------------------------------------------------

#III. Are skewed (i.e. not symmetric) ?
# Ans: A (Positively Skewed)

--------------------------------------------------------------------------------------
#IV. Have outliers on both sides of the center?
# Ans: B (Outliers are there on both the sides of central axis)
  

#####################################################################################

#2. For each of the following statements, indicate whether it is True/False. If false, explain why.
#The manager of a warehouse monitors the volume of shipments made by the delivery team. The
#automated tracking system tracks every package as it moves through the facility. A sample of 25
#packages is selected and weighed every day. Based on current contracts with customers, the
#weights should have ?? = 22 lbs. and ?? = 5 lbs.

pnorm(q=25, mean=22, sd= 5, lower.tail = FALSE)


#2(i) Before using a normal model for the sampling distribution of the average package
#weights, the manager must confirm that weights of individual packages are normally
#distributed.

#Ans::::: True

--------------------------------------------------------------------------

#2(ii) The standard error of the daily average SE(X??) = 1.

#Ans::::: False

#The standard error (SE) of a statistic (most commonly the mean) is the standard 
#deviation of its sampling distribution,or sometimes as an estimate of that 
#standard deviation.

#Mathematically, the standard error of the mean formula is given by:
# SE  = s / sqrt (n)  
#  Standard Error of the Mean------

# Where--------------

#??M = standard error of the mean
#?? = the standard deviation of the original distribution
#s = the sample size
#???N = Root of the sample size


std <- function(x) sd(x)/sqrt(length(x))
std(c(5,25))

# OR

se <- function(x) sqrt(var(x)/length(x))
se(c(5,25))

######################################################################

# Q3.
#Auditors at a small community bank randomly sample 100 withdrawal transactions made during the
#week at an ATM machine located near the bank's main branch. Over the past 2 years, the average
#withdrawal amount has been $50 with a standard deviation of $40. Since audit investigations are
#typically expensive, the auditors decide to not initiate further investigations if the mean transaction
#amount of the sample is between $45 and $55.What is the probability that in any given week, there
# will be an investigation?
#A. 1.25%
#B. 2.5%
#C. 10.55%
#D. 21.1%
#E. 50%

#Ans 3:
# Based on Sampling distribution,  following are the inputs:-

X=100 # (Random Sample)
?? = 50 # (Average withdrawal)
?? = 40 # (Standard deviation)

pnorm(q=10, mean=50, sd= 40, lower.tail = TRUE)

#Hence to calculate Standard Error----
SE<-s/sqrt(n)
SE<-40/sqrt(100)
SE

# This distribution is normally distributed because of the Central Limit Theorem.

#P(45 < x < 55) is roughly 0.7887 

#Hence ----
Prob<-(1-0.7887) 
Prob

# Hence in any given week in case if there is an investigation, the probability is option D
# i.e. 21.1%

###############################################################

#Q4. 
#The auditors from the above example would like to maintain the probability of investigation to 5%.
#Which of the following represents the minimum number transactions that they should sample if
#they do not want to change the thresholds of 45 and 55? Assume that the sample statistics remain
#unchanged.
#A. 144
#B. 150
#C. 196
#D. 250
#E. Not enough information

# Ans 4:
z_value <- (55-45)/50 
pnorm(-abs(z_value))



#################################################################

# Q5
#An educational startup that helps MBA aspirants write their essays is targeting individuals who have
#taken GMAT in 2012 and have expressed interest in applying to FT top 20 b-schools. There are
#40000 such individuals with an average GMAT score of 720 and a standard deviation of 120. The
#scores are distributed between 650 and 790 with a very long and thin tail towards the higher end
#resulting in substantial skewness. Which of the following is likely to be true for randomly chosen
#samples of aspirants?
#A. The standard deviation of the scores within any sample will be 120.
#B. The standard deviation of the mean of across several samples will be 120.
#C. The mean score in any sample will be 720.
#D. The average of the mean across several samples will be 720.
#E.  The standard deviation of the mean across several samples will be 0.60 

# Ans 5:

# Option C is appropriate.
# The mean score in any sample will be 720.

# Reason: This is because of the Central Limit Theorem. We should know that ---
# The standard deviation is a measure of the spread of scores within a set of data. Since the given dataset 
# has substantial  skewness, it is not appropriate to consider standard deviation.

# Mean is used for summarizing Continuous data as given in the above dataset. Hence, option C 
#is found to be more appropriate.

####################################################################

