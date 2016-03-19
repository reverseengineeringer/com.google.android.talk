public final class jwe
  extends lyb<jwe>
{
  public jwf[] a = jwf.d();
  
  public jwe()
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
        jwf localjwf = a[i];
        if (localjwf != null) {
          paramlxz.b(1, localjwf);
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
          jwf localjwf = a[j];
          k = i;
          if (localjwf != null) {
            k = i + lxz.d(1, localjwf);
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
 * Qualified Name:     jwe
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */