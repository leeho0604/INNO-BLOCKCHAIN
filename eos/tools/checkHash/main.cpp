#include <stdio.h>
#include <string.h>
#include <stdlib.h>

int main(int argc,char* argv[]){
	if(argc < 4){
		printf("input Error: filePath & start address & end address\n");
		return 0;
	}
	
	printf("FilePath:%s\n",argv[1]);
	printf("Start pos:%s\n",argv[2]);
	printf("Size:%s\n",argv[3]);
	FILE* fp = fopen(argv[1],"r");
	if(fp == 0){
		printf("FilePath Error\n");
		return 0;
	}
	char buf[1024];
	memset(buf,0,1024);

	int spos = atoi(argv[2]);
	int nSize = atoi(argv[3]);
	printf("spos:%d & Size:%d\n",spos,nSize);
	fseek(fp,spos,SEEK_SET);

	fread(buf,1,nSize,fp);

	FILE* fpw = fopen("Check_File.txt","w");
	fwrite(buf,1,nSize,fpw);
	fclose(fpw);
		
	fclose(fp);

	printf("out:Check_File.txt\n");

	return 0;
}
