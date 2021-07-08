void MxMonCPU(float* A, float* B, float* C, int N);
{
	forall (int i=0; i<N; i++)
	forall (int j=0; j<N; j++)
	{
		float sum=0;
		for (int k=0; k<N; k++)
		{
			A[i][k] float a = A[i*N + k];
			B[k][j] float b = B[k*N + j];
			sum += a*b;
		}
	C[i*N + j] = sum;
	}
}
