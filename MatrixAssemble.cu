#include <stdio.h>
#include <stdlib.h>

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
        d_matrixA[] = GaussIntegral(&LeftFunction, &der_1_Basis1, &der_1_Basis2, GaussInterval);
        d_vectorB[] = GaussIntegral(&RightFunction, &Basis1, &Basis2, GaussInterval);
    }
}