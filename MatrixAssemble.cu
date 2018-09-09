#include <stdio.h>
#include <stdlib.h>
#include 'GaussIntegral'
#include 'Leftfunction'
#include 'RightFunction'

__global__

// 并行实现矩阵组装
// 通过索引线程号决定如何计算
__device__
void MatrixAssemble(double[] matrixA, double[] vectorB, int N) {
    cudaMalloc(&d_matrixA, N*N*sizeof(double));
    cudaMalloc(&d_vectorB, N*sizeof(double));
    const int threadIndexX = threadIdx.x + blockIdx.x * blockDim.x;
    const int threadIndexY = threadIdx.y + blockIdx.y * blockDim.y;
    if(blablabla) {
        d_matrixA[] = GaussIntegral();
        d_vectorB[] = GaussIntegral();
    }
}