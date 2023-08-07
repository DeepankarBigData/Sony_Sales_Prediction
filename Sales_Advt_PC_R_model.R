######################accessing the data################
sales = read.csv(file.choose(),)sa
sales
str(sales)
hist(sales$Sales)
hist(sales$Advt, col = 'red')
hist(sales$PC , col = 'blue')
boxplot(sales$Sales)
##############################
data Validation
##############################
Data cleaning
##############################
Data testing
################################

################################
Model : sales Vs Advt
#################################
model1 = lm(Sales~Advt,data= sales)

summary(model1)

anova(model1)
res = residuals(model1)
pred = predict(model1)
model1_sales = cbind(sales,pred,res)
model1_sales
#################################
model2 : sales vs PC
################################
model2 = lm(Sales~PC,data= sales)

summary(model2)

anova(model2)
res2 = residuals(model2)
pred2 = predict(model2)
model2_sales = cbind(sales,pred2,res2)
model2_sales
##################################
model3 : sales vs Advt+PC
####################################
model3 = lm(Sales~Advt+PC,data= sales)

summary(model3)

anova(model3)
res3 = residuals(model3)
pred3 = predict(model3)
model3_sales = cbind(sales,pred3,res3)
model3_sales

anova(model1)
anova(model2)
anova(model3)


summary(model1)
summary(model2)
summary(model3)

#######################################
AIC for small data LOW AIC is always better
########################################
AIC(model1)   ##data is small afiliate criteria information while comapring data its least value is better
AIC(model2)   ##value less is good model
AIC(model3)

#####################################
BIC for large data LOW BIC is always better
########################################
BIC(model1)    ##data is large or big data 
BIC(model2)    ##value is large its good
BIC(model3)

##########################################
head(model1)
head(model2)
head(model3)

Durbin-Waston statistics
dw test is decide which is best model(lies between 1.5 to 2.5 between if not auto correration problem its meanss errors are not following linear 
less then 1.5 is follow linear
residual is follow linear which means its linear
#########################################

sales = read.csv(file.choose(),)

##
durbinWatsonTest(model1
durbinWatsonTest(model2)
durbinWatsonTest(model)

##
model4= lm(Sales~Advt+PC+log10(PC),data=sales) 

sales and prediction is good but sales and residual is dw test value below 1.5
so its following linear so need optimization to make it non linear in
between 1.5 to 2.5

suppose if sales and residual is non linear but by changing regression 
its look like linear so its failure and called as
homoscadisticity graph

####################################
predict sales for jan-feb-march followed by model1
jan = 9
Feb = 10
March = 12
also find for model 2,3,4
 which is most reccemded sales


soln--> apply formula y=b0+b1*x use x as (9,10,12)
summary(model1)
for model 1
40.4016+6.4785*9 =98.7081
for 10 lakh
40.4016+6.4785*10=105.1866
for 12 lakh
40.4016+6.4785*12=118.1436
-----------------------------------------------------------------
summary(model2)
for 9 lakh
10.9420+13.5733*9=133.1017

for 10 lakh
10.9420+13.5733*10=146.675

for 12 lakh
10.9420+13.5733*12=173.8216

---------------------------------------------------------------------
summary(model3)
in model 3  
in this case pc t value is more that is 80% and Advt is 20%
so from 9 lakh we divide into 80%-20% its menas 80% is given to PC and 20% is
given to Advt
summary(model1)

addition of t value
6.463+ 24.413=30.876

calculate %

6.463/30.876=0.2093212

24.413/30.876=0.7906788

7.7979+1.8994*.21*9+11.6114*.79*9=93.94482

7.7979+1.8994*.21*10+11.6114*.79*10=103.5167

7.7979+1.8994*.21*12+11.6114*.79*12=122.6605
-----------------------------------------------------------------------------
summary(model4)

 9.079 -2.001+10.359=17.437

9.079/17.437=0.5206744

-2.001/17.437=-0.114756

10.359/17.437=0.5940816

9*0.5206744=4.68607

9*-0.114756=-1.032804

9*0.5940816=5.346734

-47.6995+1.6778*4.68607-2.8571*-1.032804+193.3167*log10(9*0.5940816)=103.8653

-47.6995+1.6778*10*0.5206744-2.8571*10*-0.114756+193.3167*log10(10*0.5940816)=113.9124


-47.6995+1.6778*12*0.5206744-2.8571*12*-0.114756+193.3167*log10(12*0.5940816)=131.6224
