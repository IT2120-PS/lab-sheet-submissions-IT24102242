setwd("C:\\Users\\it24102242\\Downloads\\Lab 08-20250926")

data<-read.table("Data - Lab 8.txt",header=TRUE)
fix(data)
attach(data)

##Q1
popmn<-mean(Nicotine)
popvar<-var(Nicotine)

##Q2
samples<-c()
n<-c()

for(i in 1:30){
  s<-sample(Nicotine,5,replace = TRUE)
  samples<-cbind(samples,s)
  n<-c(n,paste('S',i))
}

colnames(samples)=n

s.means<-apply(samples,2,mean)
s.vars<-apply(samples,2,var)

##Q3
samplemean<-mean(s.means)
samplevars<-var(s.means)

##Q4
popmn
samplemean

##Q5
truevar=popvar/5
samplevars