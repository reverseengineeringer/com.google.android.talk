public final class lyj
  extends lyb<lyj>
{
  public lyk[] a = lyk.d();
  
  public lyj()
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
        lyk locallyk = a[i];
        if (locallyk != null) {
          paramlxz.b(1, locallyk);
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
          lyk locallyk = a[j];
          k = i;
          if (locallyk != null) {
            k = i + lxz.d(1, locallyk);
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
 * Qualified Name:     lyj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */