#include <iostream>
#include <fcntl.h>
#include <smmintrin.h>
#include <ctime>
#include "bmp.h"
using namespace std; 

// the header and the data
Header header;
__attribute__((aligned(32))) int *R, *G, *B, *dstdata; 
unsigned char *destdata;
long length; 

// grey = (R * 77 + G * 151 + B * 28 ) / 256
void calGrey(){
	for(int i = 0; i<length; i++){
		dstdata[i] = ((R[i] * 77 + G[i] * 151 + B[i] * 28 ) / 256); 
	}
	return ; 
}

// grey = (R * 77 + G * 151 + B * 28 ) / 256
void calGrey_sse()
{
	cout << "Using intrinsic" << endl; 
	__attribute__((aligned(32))) int arr77[4] = {77, 77, 77, 77};
	__attribute__((aligned(32))) int arr152[4] = {152, 152, 152, 152}; 
	__attribute__((aligned(32))) int arr28[4] = {28, 28, 28, 28};
	size_t i, block = 4;	// 128/32 = 4
	size_t numBlock = length / block;	// number blocks
	size_t numRem = length % numBlock;	// remainder
	__m128i rR, rG, rB, rRes, rmid; 
	// pointers
	const __m128i* rptr = (const __m128i*)R;
	const __m128i* gptr = (const __m128i*)G;
	const __m128i* bptr = (const __m128i*)B;
	__m128i* bufptr = (__m128i*)dstdata;
	__m128i r77 = _mm_load_si128((const __m128i*)arr77); 
	__m128i r152 = _mm_load_si128((const __m128i*)arr152); 
	__m128i r28 = _mm_load_si128((const __m128i*)arr28); 
	int32_t *bufp = (int32_t *)bufptr; 
 
	// calculation
	for(i=0; i<numBlock; i++)
	{
		rRes = _mm_setzero_si128(); 
		rR = _mm_load_si128(rptr); 
		rG = _mm_load_si128(gptr); 
		rB = _mm_load_si128(bptr); 
		rmid = _mm_mullo_epi32(rR, r77); 
		rRes = _mm_add_epi32(rRes, rmid); 
		rmid = _mm_mullo_epi32(rG, r152); 
		rRes = _mm_add_epi32(rRes, rmid);
		rmid = _mm_mullo_epi32(rB, r28); 
		rRes = _mm_add_epi32(rRes, rmid);
		_mm_store_si128(bufptr, rRes); 
		bufp = (int32_t *)bufptr;
		bufp[0] /= 256; 
		bufp[1] /= 256; 
		bufp[2] /= 256; 
		bufp[3] /= 256; 
		bufptr++; 
		rptr++;
		gptr++;
		bptr++;
	}
 
	// deal with remainder
	int32_t *rp = (int32_t *)rptr; 
	int32_t *gp = (int32_t *)gptr; 
	int32_t *bp = (int32_t *)bptr; 
	bufp = (int32_t *)bufptr;
	for(i=0; i<numRem; i++)
	{
		bufp[i] = (rp[i]*77 + gp[i]*152 + bp[i]*28)/256; 
	}
 
}

/* g++ -g image.cpp bmp.cpp -o image */ 
int main(){
	// definition
	FILE *source, *dest; 
	Palette *pa = new Palette[256]; 
	clock_t start, end; 

	// initialize palette
	for(int i = 0; i<256; i++){
		pa[i].r = pa[i].g = pa[i].b = i; 
	}

	// open file
	if((source = fopen("./soulmate.bmp", "rb")) == NULL){
		cout << "Opening fails!" << endl; 
		return -1; 
	}
	if((dest = fopen("./soulmate_grey.bmp", "wb")) == NULL){
		cout << "Opening fails!" << endl; 
		fclose(source); 
		return -1; 
	}

	// read in source file header
	loadBMPheader(source, header);
	length = header.width * header.height;   
	R = new int[length]; 
    G = new int[length]; 
    B = new int[length]; 
	dstdata = new int[length]; 
	destdata = new unsigned char[length]; 
	// read in source file data
	loadBMPdata(source, length, R, G, B); 
	fclose(source); 

	// redefine header
	// redefine information
	header.colorBits = 8; 
	header.dataOffset = sizeof(Header) + 256*sizeof(RGBQ); 
	header.dataSize = length; 
	header.fileSize = header.dataSize + header.dataOffset; 
	header.resolution[0] = header.resolution[1] = 0; 

	start = clock(); 
	// calculate grey degree
	// calGrey_sse(); 
	calGrey();
	end = clock(); 

	// save BMP
	for(int i=0; i<length; i++){
		destdata[i] = (unsigned char)dstdata[i]; 
	}
	saveBMP(dest, header, pa, destdata, length); 
	delete []R; 
	delete []G; 
	delete []B; 
	delete []dstdata; 
	delete []destdata; 
	delete []pa; 
	fclose(dest); 
	cout << "Time for calculation: " << (double)(end - start)/CLOCKS_PER_SEC << endl; 
    return 0; 
}
