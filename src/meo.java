public final class meo
  extends lyb<meo>
{
  public meh[] a = meh.d();
  
  public meo()
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
        meh localmeh = a[i];
        if (localmeh != null) {
          paramlxz.b(1, localmeh);
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
          meh localmeh = a[j];
          k = i;
          if (localmeh != null) {
            k = i + lxz.d(1, localmeh);
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
 * Qualified Name:     meo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */