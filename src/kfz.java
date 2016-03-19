public final class kfz
  extends lyb<kfz>
{
  public kfy[] a = kfy.d();
  public kdo requestHeader = null;
  
  public kfz()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (requestHeader != null) {
      paramlxz.b(1, requestHeader);
    }
    if ((a != null) && (a.length > 0))
    {
      int i = 0;
      while (i < a.length)
      {
        kfy localkfy = a[i];
        if (localkfy != null) {
          paramlxz.b(2, localkfy);
        }
        i += 1;
      }
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (requestHeader != null) {
      i = j + lxz.d(1, requestHeader);
    }
    j = i;
    if (a != null)
    {
      j = i;
      if (a.length > 0)
      {
        j = 0;
        while (j < a.length)
        {
          kfy localkfy = a[j];
          int k = i;
          if (localkfy != null) {
            k = i + lxz.d(2, localkfy);
          }
          j += 1;
          i = k;
        }
        j = i;
      }
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     kfz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */