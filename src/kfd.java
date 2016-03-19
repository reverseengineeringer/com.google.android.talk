public final class kfd
  extends lyb<kfd>
{
  public jxi[] a = jxi.d();
  
  public kfd()
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
        jxi localjxi = a[i];
        if (localjxi != null) {
          paramlxz.b(1, localjxi);
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
          jxi localjxi = a[j];
          k = i;
          if (localjxi != null) {
            k = i + lxz.d(1, localjxi);
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
 * Qualified Name:     kfd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */