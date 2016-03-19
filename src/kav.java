public final class kav
  extends lyb<kav>
{
  public Boolean a = null;
  public byte[] b = null;
  public kau[] c = kau.d();
  
  public kav()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a.booleanValue());
    }
    if (b != null) {
      paramlxz.a(2, b);
    }
    if ((c != null) && (c.length > 0))
    {
      int i = 0;
      while (i < c.length)
      {
        kau localkau = c[i];
        if (localkau != null) {
          paramlxz.b(3, localkau);
        }
        i += 1;
      }
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i = super.b();
    int j = i;
    if (a != null)
    {
      a.booleanValue();
      j = i + (lxz.f(1) + 1);
    }
    i = j;
    if (b != null) {
      i = j + lxz.b(2, b);
    }
    j = i;
    if (c != null)
    {
      j = i;
      if (c.length > 0)
      {
        j = 0;
        while (j < c.length)
        {
          kau localkau = c[j];
          int k = i;
          if (localkau != null) {
            k = i + lxz.d(3, localkau);
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
 * Qualified Name:     kav
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */