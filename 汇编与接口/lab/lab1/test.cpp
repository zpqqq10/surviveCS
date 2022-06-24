#include <stdio.h>
#include <time.h>
#include <stdlib.h>

const int N = 128;
int times = 2048, lower = -1e3, upper = 1e3;

void multiply(double m1[][N], double m2[][N], double m3[][N])
{
    for (int i = 0; i < N; i++)
    {
        for (int j = 0; j < N; j++)
        {
                m3[i][j] += m1[i][j] * m2[i][j];
        }
    }

    // return the result to m1
    for (int i = 0; i < N; i++)
    {
        for (int j = 0; j < N; j++)
        {
            m1[i][j] = m3[i][j];
        }
    }
}

int main()
{
    double m1[N][N], m2[N][N], m3[N][N];

    for (int i = 0; i < N; i++)
    {
        for (int j = 0; j < N; j++)
        {
            m1[i][j] = lower + 1.0 * (rand() % RAND_MAX / RAND_MAX * (upper - lower));
        }
    }
    for (int i = 0; i < N; i++)
    {
        for (int j = 0; j < N; j++)
        {
            m2[i][j] = lower + 1.0 * (rand() % RAND_MAX / RAND_MAX * (upper - lower));
        }
    }

    clock_t start, end;
    start = clock();
    for (int i = 0; i < times; i++)
    {
        multiply(m1, m2, m3);
    }
    end = clock();
    printf("time used: %f\n", (double)(end - start) / CLOCKS_PER_SEC);

    // float op1[4] = { 1.0, 2.0, 3.0, 4.0 };
	// float op2[4] = { 5.0, 6.0, 7.0, 8.0 };
	// float result[4];
	// __m128  a, b, c;
 
	// Load
	// a = _mm_loadu_ps(op1);
	// b = _mm_loadu_ps(op2);
 
	// Calculate
	// c = _mm_add_ps(a, b);
 
	// Store
	// _mm_storeu_ps(result, c);

    return 0;
}