public final class mcg
  extends lyb<mcg>
{
  public mch[] a = mch.d();
  
  public mcg()
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
        mch localmch = a[i];
        if (localmch != null) {
          paramlxz.b(1, localmch);
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
          mch localmch = a[j];
          k = i;
          if (localmch != null) {
            k = i + lxz.d(1, localmch);
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
 * Qualified Name:     mcg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */