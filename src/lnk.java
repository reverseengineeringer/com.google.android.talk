public final class lnk
  extends lyb<lnk>
{
  public ltz[] a = ltz.d();
  
  public lnk()
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
        ltz localltz = a[i];
        if (localltz != null) {
          paramlxz.b(1, localltz);
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
          ltz localltz = a[j];
          k = i;
          if (localltz != null) {
            k = i + lxz.d(1, localltz);
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
 * Qualified Name:     lnk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */