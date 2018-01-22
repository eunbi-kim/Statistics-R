# 데이터 프레임 생성
count<-c(5,3,6,3,1) #벡터 생성
food<-c("짬뽕","짜장면","짬뽕","짜장면","짬뽕")
meanCount<-c(3.62,5.45,2.54,3.67,7.23)

DF<-data.frame(count,food,meanCount)  #위의 3개의 벡터로 DF라는 이름의 데이터 프레임 형태의 객체 생성
DF
#-------------------------------------------------------

SList<-read.csv("02 R Basic/example_studentlist.csv") #csv 파일 읽어드리기

str(SList)  # 데이터 프레임 형태의 SList 구조 파악
SList

# 한 개의 변수 선택
SList$height  #DF 객체에 $를 붙여 변수 선택 / height 변수에 해당하는 벡터를 선
SList[[7]] #DF 안의 7번째 열을 벡터 형태로 선택
SList[7] #DF 안의 7번째 열을 데이터 프레임 형태로 선택

# 여러개의 변수 선택
SList[c(6,7,8)] #6,7,8 번째 열을 데이터 프레임 형태로 선택
SList[c("bloodtype","height")]  #입력한 변수 명에 대한 데이터 프레임을 선택

# 데이터 프레임을 검색 목록에 올리기
attach(SList) #입력한 데이터 프레임 객체를 검색 목록에 올
height  #검색목록에 올리면 원하는 변수명만 입력하여도 벡터형식으로 출력

detach(SList) #검색 목록에  있는 데이터 프레임 객체를 삭제

# 조건적으로 변수 선택
subset(SList, subset=(height>=180)) #180 이상인 데이터만 출력
subset(SList, select=c(height), subset=(height>=180)) #height 변수만 고려함
subset(SList, select=c(-weight,-bloodtype), subset=(height>=180)) #weight, bloodtype 은 제

# 변수명 변경
colnames(SList) #열 이름 (변수명) 출력
colnames(SList)[6]<-"Blood"  #새로운 변수명으로 변경
SList

# 데이터 프레임 병합
Omit<-read.csv("02 R Basic/omit.csv")
SList<-merge(SList,Omit,by="name")#merge 함수를 통해 기존의 데이터 프레임에 Omit 내용 추가. name을 기준으로 자동으로 병합
SList



