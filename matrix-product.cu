void MxMonGPU(float* A, float* B, float* C, int N);
{
	float sum=0;
	int i, j;

	i = blockIdx.x * blockDim.x + threadIdx.x;
	j = blockIdx.y * blockDim.y + threadIdx.y;

	for (int k=0; k<N; k++)
	{
		float a = A[i*N + k];
		float b = B[k*N + j];
		sum += a*b;
	}
	C[i*N + j] = sum;
}
