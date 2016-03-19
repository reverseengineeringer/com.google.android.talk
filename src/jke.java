public final class jke
  extends lyb<jke>
{
  public jkw[] a = jkw.c;
  public Integer b = null;
  public Boolean c = null;
  
  public jke()
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
        jkw localjkw = a[i];
        if (localjkw != null) {
          paramlxz.b(1, localjkw);
        }
        i += 1;
      }
    }
    paramlxz.a(2, b.intValue());
    if (c != null) {
      paramlxz.a(3, c.booleanValue());
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
        j = 0;
        for (;;)
        {
          k = i;
          if (j >= a.length) {
            break;
          }
          jkw localjkw = a[j];
          k = i;
          if (localjkw != null) {
            k = i + lxz.d(1, localjkw);
          }
          j += 1;
          i = k;
        }
      }
    }
    int j = lxz.e(2, b.intValue()) + k;
    i = j;
    if (c != null)
    {
      c.booleanValue();
      i = j + (lxz.f(3) + 1);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     jke
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */