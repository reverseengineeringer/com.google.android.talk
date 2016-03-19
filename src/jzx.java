public final class jzx
  extends lyb<jzx>
{
  public jzz[] a = jzz.d();
  
  public jzx()
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
        jzz localjzz = a[i];
        if (localjzz != null) {
          paramlxz.b(1, localjzz);
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
          jzz localjzz = a[j];
          k = i;
          if (localjzz != null) {
            k = i + lxz.d(1, localjzz);
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
 * Qualified Name:     jzx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */