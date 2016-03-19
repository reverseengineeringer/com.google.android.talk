public final class lcz
  extends lyb<lcz>
{
  public ldb[] a = ldb.d();
  
  public lcz()
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
        ldb localldb = a[i];
        if (localldb != null) {
          paramlxz.b(1, localldb);
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
          ldb localldb = a[j];
          k = i;
          if (localldb != null) {
            k = i + lxz.d(1, localldb);
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
 * Qualified Name:     lcz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */