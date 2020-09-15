#Basic graphic funtion : plot()
x1 = 1:5
y1 = x1^2
z1 = 5:1
(mat1 = cbind(x1,y1,z1))
par(mfrow = c(2,3))
plot(y1, main = 'using index')
plot(x = x1, y = y1, main = 'x^2')
plot(mat1, main = 'using_matrix')
plot(x1, y1, type = 'l', main = 'line')
plot(x1, y1, type = 'h', main = 'high density')
plot(x1, y1, type = 'n', main = 'no plotting')

#type
#p = point
#l = line
#b = both(line + point)
#c = lines part
#o = both(overplotted)
#h = for histogram like(or 'high-density)vertical lines
#s = stair step
#S = other step
#n = no plotting
par(mfrow = c(1,1))
x = rep(1:5, rep(5,5))
y = rep(5:1, 5)
pchs = c('&','z','Z','1','가')

plot(1:5, type = 'n', xlim = c(0,7.5), ylim = c(0.5,5.5),main = "point by 'pch'")
points(x,y,pch = 1:25, cex = 2)#cex = point size, pch = point shape
text(x- 0.5, y, labels = 1:25, cex = 1.2)
points(x = rep(6,5), 5:1, pch = 65:69, cex = 1.2)
text(rep(6,5)-0.5, 5:1, labels = as.character(65:69), cex = 1.2)
points(x = rep(7,5),5:1, pch = pchs, cex = 1.2)
text(rep(7,5)-0.5,5:1, labels = paste0("'",pchs,"'"), cex = 1.2)

#abline()
head(cars)
z = lm(dist~speed, data = cars)
z$coefficients

plot(cars, main = 'abline', xlim = c(0,30))
abline(h = 20)
abline(h = 30)
abline(v = 20)
abline(a = 40, b = 4) #a = intercept, b = gradient
abline(z, lty = 2, lwd = 2) #linear regression's coeff

#lines()
lty1 = c('blank','solid','dashed','dotted','dotdash','longdash','twodash')
lty2 = c('33','24','F2','2F','3313','F252','FF29')
plot(0:6,0:6, type = 'n', ylim = c(0,20), xlab = '',ylab = '', main = 'lines')
lines(c(1,3),c(20,20),lty = 1) #lty = line type
lines(c(1,3),c(19,19),lty = 2)
lines(c(1,3),c(18,18),lty = 3)
lines(c(1,3),c(17,17),lty = 4)
lines(c(1,3),c(16,16),lty = 5)
lines(c(1,3),c(15,15),lty = 6)
lines(c(1,3),c(14,14),lty = lty1[1])
lines(c(1,3),c(13,13),lty = lty1[2])
lines(c(1,3),c(12,12),lty = lty1[3])
lines(c(1,3),c(11,11),lty = lty1[4])
lines(c(1,3),c(10,10),lty = lty1[5])
lines(c(1,3),c(9,9),lty = lty1[6])
lines(c(1,3),c(8,8), lty = lty1[7])
lines(c(1,3),c(7,7), lty = lty2[1])
lines(c(1,3),c(6,6), lty = lty2[2])
lines(c(1,3),c(5,5), lty = lty2[3])
lines(c(1,3),c(4,4), lty = lty2[4])
lines(c(1,3),c(3,3), lty = lty2[5])
lines(c(1,3),c(2,2), lty = lty2[6])
lines(c(1,3),c(1,1), lty = lty2[7])
legend(3.5, 20, cex = .7, legend = 1:6, lty = 1:6)
legend(3.5, 13, cex = .6, legend = c(lty1, lty2), lty = c(lty1, lty2))

#arrows()
plot(1:9, type = 'n', axes = F, xlab = '', ylab = '', main = 'arrows')
arrows(1, 9, 4, 9, angle = 30, length = 0.25, code = 2)
arrows(1, 8, 4, 8, length = 0.5)
arrows(1, 7, 4, 7, length = 0.1)
arrows(1, 6, 4, 6, angle = 60)
arrows(1, 5, 4, 5, angle = 90)
arrows(1, 4, 4, 4, angle = 120)
arrows(1, 3, 4, 3, code = 0)
arrows(1, 2, 4, 2, code = 1)
arrows(1, 1, 4, 1, code = 3)
text(4.5, 9, adj = 0, 'angle = 30, length = 0.25, code = 2(default)')
text(4.5, 8, adj = 0, 'length = 0.5')
text(4.5, 7, adj = 0, 'length = 0.1')
text(4.5, 6, adj = 0, 'angle = 60')
text(4.5, 5, adj = 0, 'angle = 90')
text(4.5, 4, adj = 0, 'angle = 120')
text(4.5, 3, adj = 0, 'code = 0')
text(4.5, 2, adj = 0, 'code = 1')
text(4.5, 1, adj = 0, 'code = 3')

#segments()
x = runif(12); y = rnorm(12)
i = order(x); x = x[i]; y = y[i]
par(mfrow = c(2,1))
plot(x, y, main = '2 segments by segments function')
s = seq(length(x) - 1)
segments(x[s],y[s],x[s+2],y[s+2], lty = 1:2)
plot(x, y, main = '3 segments by segments function')
s = seq(length(x) - 2)
segments(x[s],y[s],x[s+3],y[s+3], lty = 1:3)
box(which = 'outer')

#box()
par(mar = c(4,4,4,4))
par(oma = c(4,4,4,4))
par(mfrow = c(1,2))
hist(rnorm(50), axes=F, xlab='', ylab='', main='box')
whichs = c('outer', 'inner', 'plot', 'figure')
box(which=whichs[1], lty=1)
box(which=whichs[2], lty=2)
box(which=whichs[3], lty=3)
box(which=whichs[4], lty=4)
legend('topleft', legend=whichs, lty=1:4)

hist(rnorm(50), axes = F, xlab= '',ylab = '',main = 'box')
whichs = c('outer', 'inner', 'plot',' figure')
box(which = whichs[1], lty = 2)
box(which = whichs[2], lty = 1)
box(which = whichs[3], lty = 1)
box(which = whichs[4], lty = 1)
legend('topright', legend = whichs, lty = 1:4)
