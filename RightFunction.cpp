// 右端系数函数

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

double LeftFunction(double x) {
    return -exp(x)*(cos(x)-2*sin(x)-x*cos(x)-x*sin(x));
}