#include <stdio.h>
#include <stdlib.h>
//#include 'kernal.h'

// 一维线性元基函数
// x是自变量，xBoundary是对应区间边界
// h表示步长
// 默认所有输入都是合法输入，不进行检查
double Basis1(double x, double xBoundary, double h) {
        return (x-xBoundary)/h;
}
double Basis2(double x, double xBoundary, double h) {
        return (-x+xBoundary)/h;
}
double der_1_Basis1(double x, double xBoundary, double h) {
        return 1/h;
}
double der_1_Basis2(double x, double xBoundary, double h) {
        return -1/h;
}