
;; Function main (main, funcdef_no=0, decl_uid=2344, cgraph_uid=1, symbol_order=0)

int main ()
{
  int f;
  int n;
  int i;
  int D.2353;

  n = 30;
  i = 2;
  f = 1;
  goto <D.2350>;
  <D.2351>:
  f = f * i;
  i = i + 1;
  <D.2350>:
  if (i <= n) goto <D.2351>; else goto <D.2349>;
  <D.2349>:
  printf ("%d\n", f);
  D.2353 = 0;
  goto <D.2354>;
  D.2353 = 0;
  goto <D.2354>;
  <D.2354>:
  return D.2353;
}


