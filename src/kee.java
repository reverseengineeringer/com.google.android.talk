public final class kee
  extends lyb<kee>
{
  public jxn[] a = jxn.d();
  public jys b = null;
  public Boolean c = null;
  public Integer d = null;
  public kdo requestHeader = null;
  
  public kee()
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
        jxn localjxn = a[i];
        if (localjxn != null) {
          paramlxz.b(2, localjxn);
        }
        i += 1;
      }
    }
    if (b != null) {
      paramlxz.b(3, b);
    }
    if (c != null) {
      paramlxz.a(4, c.booleanValue());
    }
    if (d != null) {
      paramlxz.a(5, d.intValue());
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
          jxn localjxn = a[j];
          int k = i;
          if (localjxn != null) {
            k = i + lxz.d(2, localjxn);
          }
          j += 1;
          i = k;
        }
        j = i;
      }
    }
    i = j;
    if (b != null) {
      i = j + lxz.d(3, b);
    }
    j = i;
    if (c != null)
    {
      c.booleanValue();
      j = i + (lxz.f(4) + 1);
    }
    i = j;
    if (d != null) {
      i = j + lxz.e(5, d.intValue());
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     kee
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */