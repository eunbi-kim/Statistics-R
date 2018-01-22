SList<-read.csv("02 R Basic/example_studentlist.csv")
attach(SList)

Freq<-table(bloodtype)  #bloodtype 안의 명목형 변수 개수 count (도수 계산)
Freq

RelativeFreq<-prop.table(Freq)  #상대 도수 계산
RelativeFreq

RTable<-rbind(Freq,RelativeFreq)  #Freq에 RelativeFreq 데이터추가 (행추가)
RTable<-addmargins(RTable,margin=2) #행과 열의 합 추가 (margin=1은 열의 합, 2는 행의 합, 생략시 둘 다 출력)
RTable
barplot(RTable) #bar chart
title(main="혈액형별 빈도수",xlab="혈액형",ylab="빈도수")

hist(height, breaks=10) #breaks 으로 간격 조절
hist(height) 

hist(height, freq=FALSE)

