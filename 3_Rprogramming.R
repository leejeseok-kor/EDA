#3.1 제어문(control flow)

#if()
x = 1:5
x
y = -2:2
y
if(any(x<0)) print(x) #do not execute
if(any(y<0)) print(y) #execute

if(any(y<0) ){
  print(y)
  print('y contains negative values')
}

if(pi > 3) print('expr if statement') else print('expre else statement')
if(pi < 3) print('expr if statement') else print('expre else statement')
#-> pi is larger than 3

#multiple conditions
if(length(x) == 5){
  if(sum(x) == 15) print('Vector x length = 5, sum = 15')
} else {
  print('Vector x length!=5')
}
#alternative form
if((length(x) == 5) && (sum(x) == 15)){
  print('Vector x length = 5, sum = 15')
} else {
  print('Vector x length != 5')
}

## ifelse(A,B,C) A가 T이면 B실행, F이면 C실행
y
ifelse(y>0,y,-y)
abs(y)
tmp = 3
ifelse(tmp>0,'positive',ifelse(tmp < 0, 'negative','zero'))

#3.2 반복문(loop)
#for, while, repeat
##for
for(i in 5:1) print(rep(i,i))
sum.x = 0
for(x in 1:10) sum.x = sum.x + x
sum.x
for(i in 2:9){
  for(j in 1:9)
    cat(i, '*', j, '=', i*j, '\n')
}
#break && next(continue)
sum.x = 0
for (i in 1:10){
  sum.x = sum.x + i
  if(sum.x > 20) break
  cat(i, ' ', sum.x, '\n')
}

for(i in 2:9){
  if(i > 5) break
  for(j in 1:9){
    if(j > 1) break
    cat(i, '*', j, '=', i*j, '\n')
  }
}

#while
sum.x = 0
x = 1
while (sum.x < 30){
  sum.x = sum.x + x
  x = x + 1
  print(sum.x)
}
print(sum.x)
sum.x = 0
for(i in 1:10){
  sum.x = sum.x + i
  print(sum.x)
  if (sum.x >30) break
}
print(sum.x)


#3.3 function
my.mean = function(data) sum(data)/length(data)
my.mean(1:10)
mean(1:10)
#mean = my.mean
attributes(my.mean)
