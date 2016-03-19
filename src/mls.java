public final class mls
  extends lyb<mls>
{
  public mlr[] a = mlr.d();
  
  public mls()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if ((a != null) && (a.length > 0))
    {
      int i = 0;
      while (i < a.length)
      {
        mlr localmlr = a[i];
        if (localmlr != null) {
          paramlxz.b(1, localmlr);
        }
        i += 1;
      }
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i = super.b();
    int k = i;
    if (a != null)
    {
      k = i;
      if (a.length > 0)
      {
        int j = 0;
        for (;;)
        {
          k = i;
          if (j >= a.length) {
            break;
          }
          mlr localmlr = a[j];
          k = i;
          if (localmlr != null) {
            k = i + lxz.d(1, localmlr);
          }
          j += 1;
          i = k;
        }
      }
    }
    return k;
  }
}

/* Location:
 * Qualified Name:     mls
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */