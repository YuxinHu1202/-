#include<stdio.h>
int main()   
{
    int i, n, f;

    n=30;

    i = 2;
    f = 1;

    while(i <= n)
    {
        f = f * i;  
        i = i + 1; 
    }

    printf("%d\n", f);

    return 0;
}
