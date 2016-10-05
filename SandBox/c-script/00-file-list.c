#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <dirent.h>

void rdir (char *dname);
void countfile (int *total);
char *dir=".";

void main(void) {
    printf("==================================\n");
    printf("List of file in current directory:\n");
    printf("==================================\n");
    rdir(dir);
    printf("\n\n");
}

void rdir(char *dname) {
    DIR *currentdir;
    struct dirent *dp;
    int count = 0;
    currentdir = opendir(dname);
    if (currentdir != NULL) {
        while ((dp=readdir(currentdir)) != NULL) {
            printf("%s\n", dp->d_name);
            count++;
        }
        closedir(currentdir);
    }
    printf("==================================\n");
    int *pCount = &count;
    countfile(pCount);
}

void countfile (int *total) {
    printf("Total files: %d", *total);
}
