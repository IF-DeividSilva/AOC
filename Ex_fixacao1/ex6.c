#include<stdio.h>
#include<stdlib.h>

int main(int argc, char const *argv[])
{
      int fat = 0;
    int n = 5;
         
    for(fat = 1; n > 1; n = n - 1)
        fat = fat * n;
     
    printf("%d", fat);
    return 0;
}
