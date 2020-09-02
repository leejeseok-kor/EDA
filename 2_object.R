#options(digits  = 7)
#month.name
#month.abb
#등등

#factor활용 2way table
# name = c(1,2,3,2,3,1)
# surname = factor(name, labels = c('Kim','Lee','Park'))
# surname
# age = c(3,2,1,2,3,2)
# ages = factor(age, labels = c('Teens','Twenties','Thirties'))
# ages
# tbl  = table(surname, ages)
# tbl
# apply(tbl, 1, sum)
# apply(tbl, 2, sum)
# prop.table(tbl)
# prop.table(tbl, 1)
# prop.table(tbl, 2)
# round(prop.table(tbl, 2),2)

#2.1 자료형(mode)
3+4
mode(3+4)
mode(pi)
3<4
mode(3<4)
mode(FALSE)
mode("HI")
mode(1+4i)

c(1,2,NA)
log(-5)
1/0

5+NULL
paste0('sample',NULL)
5+NA
5+Inf
5-Inf
#자료형변환 -> as.자료형
#자료형확인 -> is.자료형

#2.2 자료객체의 class
#vector, matrix, dataframe, array, list, factor(범주형), ts(시계열)등

#2.3 Vector
c(1,3,5)
c(1,0.1,0.02)
c(a = c(1,3), b = 2)
x <- 3
y <- 7
c(x,y)
1.5 : 5
1 : pi

options(digits = 7)
-pi : pi

#seq(from, to, by(default), length)
seq(3,5,0.2)
seq(3,5,11)

seq(3,5,0.2)
seq(0,10,2)
seq(10,0,-1.7)
1:5
seq(5)

#rep(반복, times(default), each)
rep(c('A','B','C'),3)
rep(1:3,each = 3)


data1 = scan()
scan(what = '')
scan(what = complex())

data2 = scan(file = 'file1.txt')
data2

data2 <- scan(file = 'file1.txt', what = character())
data2

sum(seq(1:100))
sum(1:10^2)
sum((1:10)^2)

c(1,2,3) + rep(3,3)
c(1,2,3)+3
c(1,2,3)*3
1:6 + 1:3
1:6+ 1:4

age1 <- c(22,55,20)
age1

names(age1)
names(age1) <- c('Kim','Lee','Park')
age1
names(age1)
age1
age2 <- c('Kim' = 22, 'Lee' = 55, 'Park' = 20)
age2
mode(age1)
class(age1)
length(age1)
data1 = (1:5)^2
data1
data1[3]
data1[-4]
data1[c(1,2,5)]
data1[c(3,5,6)]
data1[data1 > 5]
data1 > 5
data1[c(F,F,T,T,T)]
data1[F]
data1[c(T,F)]

age2
age2[names(age2) == 'Lee']

data1 = data1 + 3
data1
data1 = c(data1, 9)
data1
paste('page', 1:10)

#기본 내장
month.name
substr(month.name,1,3)
month.abb
letters
LETTERS
month.kor = paste(1:12, '월',sep = ' ')
month.kor
data2 = c(1,3,5,NA,7,8,NA)
sum(data2)
sum(data2, na.rm = T)
data3 = rnorm(7)
data3
round(data3)
round(data3, digits = 3)
round()

mean(data3)
sd(data3)

(vec = 3:6)
is.vector(vec)
is.numeric(vec)
is.integer(vec)
is.complex(vec)

#2.4 Matrix이용 모두 동일한 자료형을 가짐
##방법1 : rbind
row1 = c(7,1,8)
row2 = c(4,6,7)
row3 = c(3,4,5)
A1 = rbind(row1, row2, row3)
A1
##방법2 : cbind
col1 = c(7,4,3)
col2 = c(1,6,4)
col3 = c(8,7,5)
A2 = cbind(col1, col2, col3)
A2
##방법3 : matrix이용
vec1 = c(7,4,3,1,6,4,8,7,5)
matrix(vec1, nrow = 3)
vec2 = c(7,1,8,4,6,7,3,4,5)
matrix(vec2,nrow = 3, byrow = T)

##방법3 : dim 이용
A1 = vec1
dim(A1) = c(3,3)
A1

##열벡터, 행벡터 >> matrix
matrix(1:4, ncol = 1)
matrix(1:4, nrow = 1)

##대각행렬, 단위행렬
diag(1:3)
diag(rep(1,3))
diag(1,3)
A1
diag(A1)
diag(diag(A1))
diag(3)

#Matrix 연산
mat1 = matrix(1:4, nrow = 2)
mat2 = diag(c(5,10))
mat1
mat2
mat1 + mat2
mat1 * mat2
mat1 %*% mat2
solve(mat1)
solve(mat1) %*% mat1
t(mat1)

#matrix와 scalar 연산
mat1
mat1 * 3
mat1 / 3
mat1 + 3
3-mat1
rbind(c(1,1),mat1)

#matrix와 vector간의 연산 >> 기본적으로 행에 대해서 연산 수행
mat3 = matrix(1:16, nrow = 4)
mat3
mat3 + c(10,20)
mat3 / c(10,20)

logical.mat1 = matrix(c(T,T,F,T), nrow = 2)
logical.mat1
mode(logical.mat1)
dim(logical.mat1)
nrow(logical.mat1)
ncol(logical.mat1)
length(logical.mat1)
dimnames(logical.mat1)
dimnames(logical.mat1) <- list(c('row1', 'row2'), c('col1','col2'))
dimnames(logical.mat1)
logical.mat1
rownames(logical.mat1)
colnames(logical.mat1)
mat3
mat4 = matrix(1:9, nrow = 3) ^ 2
mat4
mat4[2,3]
mat4[-1,-1]
mat4[T,c(T,F)]
mat4 = mat4 + 100
mat4
cbind(mat4[,-3], 0)
mat2 = matrix(rnorm(9), ncol = 3)
mat2
round(mat2,2)
sum(mat2)
mean(mat2)
sd(mat2)
cos(mat2[1:2, ])
mat1 = matrix(1:4, ncol = 2)
mat1
is.matrix(mat1)
vec1 = as.vector(mat1)
is.matrix(vec1)
as.matrix(vec1)
vec1
is.matrix(as.matrix(vec1))
dim(as.matrix(vec1))
vec2 = c(mat1[,1], mat1[,2])
mat1
vec2
###문제1
#방법1
mat = matrix(c(210,300,210,234,340,220,310,420,230,340,320,190,210,230,180), nrow = 3)
mat             
dimnames(mat) = list(c('음료수','라면','문구류'),c('월요일','화요일','수요일','목요일','금요일'))
mat_1 = mat
mat_1
#방법2
음료수 = c(210,234,310,340,210)
라면 = c(300,340,420,320,230)
문구류 = c(210,220,230,190,180)
mat_2 = rbind(음료수, 라면, 문구류)
colnames(mat_2) <- paste0(c('월','화','수','목','금'),'요일')
mat_2
is.matrix(mat_1)
is.matrix(mat_2)
dimnames(mat_1)
###문제2
mat_2
apply(mat_2, 2, sum)
###문제3
apply(mat_2, 1, sum)

#apply함수
std1 = function(x) sqrt(var(x))
std1(1:5)
apply(mat_2, 1, std1)
apply(mat_2, 1, sd)

#2.5 Array -> 이차원 or 그 이상의 고차원 자료구조 모두 동일한 자료형
array(1:24, dim = c(3,4,2), dimnames = NULL)
array(1:24, dim = c(3,4,2), dimnames = list( dim1 = c('a1','a2','a3'),
                                             dim2 = c('b1','b2','b3','b4'),
                                             dim3 = c('c1','c2')))

array(1:18, dim = c(3,2,3), dimnames = list(dim1 = c('row1','row2','row3'),
                                            dim2 = c('col1','col2'),
                                            dim3 = c('dim1','dim2','dim3')))

#2.6 Factor -> 범주형 변수 지정을 위한 객체
#nominal변수 or ordinary 변수 -> nominal factor, ordered factor
age1 = c(3,2,1,2,3,2)
fac1 = factor(age1, labels = c('TEENS','TWENTIES','THIRTIES'))
fac1
ord1 = ordered(age1, labels = c('TEENS','TWENTIES','THIRTIES'))
ord1
ord2 = ordered(fac1)
ord2

#Ordered factor -> level 은 알파벳 순으로 지정됨(default) -> level지정
fives = c('one','two', 'three','four','five')
ordered(fives)
ordered(fives, levels = fives)
mode(fac1)
length(fac1)
levels(fac1)
fac1[2]
fac1[2] = 'TEENS'
fac1

#factor활용 2way table
name = c(1,2,3,2,3,1)
surname = factor(name, labels = c('Kim','Lee','Park'))
surname
age = c(3,2,1,2,3,2)
ages = factor(age, labels = c('Teens','Twenties','Thirties'))
ages
tbl  = table(surname, ages)
tbl
apply(tbl, 1, sum)
apply(tbl, 2, sum)

prop.table(tbl)
prop.table(tbl, 1)
prop.table(tbl, 2)
round(prop.table(tbl, 2),2)

#tapply(X, INDEX, FUN) X를 INDEX의 수준별로 함수 FUN을 적용함
tapply(age, surname, length)
tapply(name, ages, length)

tapply(age, surname, function(x) length(x)/ length(surname))
tapply(name, ages, function(x) length(x)/ length(ages))

year = c(1,2,3,2,3,3,2,1,2,1)
pencil = c(5,2,3,4,5,2,5,3,5,6)
tapply(pencil, year, mean)
