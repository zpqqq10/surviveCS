#ifndef _BMP_H
#define _BMP_H

#include <iostream>
using namespace std;

// avoid padding
#pragma pack(1)
typedef struct HEADER
{
    unsigned char fileType[2];
    unsigned int fileSize;
    unsigned int reserve;
    unsigned int dataOffset;
    unsigned int infoSize; // size of info, typically 40 bytes
    int width;
    int height;
    unsigned short plane;
    unsigned short colorBits; // bits representing a color
    unsigned int compression;
    unsigned int dataSize; // size of data representing the image
    int resolution[2];
    unsigned int colorIndex;
    unsigned int important;
} Header;

#pragma pack(1)
typedef struct RGBQ
{
    unsigned char r; 
    unsigned char g; 
    unsigned char b; 
    unsigned char reserve; 
}Palette;
#pragma pack()


#pragma pack()

void loadBMPheader(FILE *file, Header &header);
void loadBMPdata(FILE *file, long length, int *R, int *G, int *B);
void saveBMP(FILE *file, Header &header, Palette *pa, unsigned char *data, long len); 


#endif