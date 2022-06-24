#include "bmp.h"

void loadBMPheader(FILE *file, Header &header)
{ 
    // read the header
    fread(&header, 1, 54, file);
    // check
    if (header.fileType[0] != 'B' || header.fileType[1] != 'M')
    {
        cout << "Not a correct BMP file" << endl;
        return ;
    }
    if (header.colorBits != 24)
    {
        cout << "Not a correct 24-bit BMP file\n" << endl;
        return ;
    }

    // correct misformatted data
    if (header.dataSize == 0)
        header.dataSize = header.width * header.height * 3;
    if (header.dataOffset == 0)
        header.dataOffset = 54;
    
    return ; 
}

// void loadBMPdata(FILE *file, long length, unsigned int *R,  unsigned int *G, unsigned int *B){
void loadBMPdata(FILE *file, long length, int *R,  int *G, int *B){
    unsigned char rgb[3]; 
    for(int i=0; i<length; i++){
        fread(rgb, 1, 3, file); 
        R[i] = rgb[0]; 
        G[i] = rgb[1]; 
        B[i] = rgb[2]; 
    }

    return ;
} 

void saveBMP(FILE *file, Header &header, Palette *pa, unsigned char *data, long len){
    // save header
    fwrite(&header, sizeof(header), 1, file); 
    // save palette
    fwrite(pa, sizeof(Palette), 256, file); 
    // save data
    fwrite(data, len, 1, file);
    return ; 
}