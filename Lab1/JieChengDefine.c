#include <stdio.h>
# define Res 8
# define Debug 1
# if Debug
  # define print(Res) printf("%d\n",Res)
# else
  # define print(Res) //
# endif
int main()   
{
    int i, n, f;

    n=30;//预先设置n为30

    i = 2;
    f = 1;

    while(i <= n)
    {
        f = f * i;  
        i = i + 1; 
    }

    print(f);

    return 0;
}
