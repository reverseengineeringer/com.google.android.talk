public final class mhm
  extends lyb<mhm>
{
  public mhn[] a = mhn.d();
  
  public mhm()
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
        mhn localmhn = a[i];
        if (localmhn != null) {
          paramlxz.b(1, localmhn);
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
          mhn localmhn = a[j];
          k = i;
          if (localmhn != null) {
            k = i + lxz.d(1, localmhn);
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
 * Qualified Name:     mhm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */