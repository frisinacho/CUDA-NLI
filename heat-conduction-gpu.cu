#define I2D(num, c, r) ((r)*(num)+(c))
void kernel(int ni, int nj, float fact, float* temp_in, float*temp_out)
	// loop over all points in domain (except boundary) (0,0)
	for ( int j=1; j < nj-1; j++ ) {
		for ( int i=1; i < ni-1; i++ ) {
		// find indices into linear memory
		// for central point and neighbours
		int i00 = I2D(ni, i, j);
		int im10 = I2D(ni, i-1, j);
		int ip10 = I2D(ni, i+1, j);
		int i0m1 = I2D(ni, i, j-1);
		int i0p1 = I2D(ni, i, j+1);

		// evaluate derivatives
		float d2tdx2 = temp_in[im10]-2*temp_in[i00]+temp_in[ip10];
		float d2tdy2 = temp_in[i0m1]-2*temp_in[i00]+temp_in[i0p1];
		
		// update temperatures
		temp_out[i00] = temp_in[i00]+fact*(d2tdx2 + d2tdy2);
	}
}
