#include <stdio.h>
#include <stdlib.h>

// 一维线性元基函数
// x是自变量，xBoundary是对应区间边界
// der是求导次数
// side=0表示局部基函数1，=1表示局部基函数2
// 默认所有输入都是合法输入，不进行检查
double Basis(double x, double xBoundary, int der, int side) {
    switch(der){
        case 0: return side == 0? (x-xBoundary)/h: (xBoundary-x)/h; break;
        case 1: return side == 0? 1/h: -1/h; break;
        default: return 0; break;
    }
}