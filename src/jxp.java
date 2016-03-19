public final class jxp
  extends lyb<jxp>
{
  public jxn[] a = jxn.d();
  public jys b = null;
  public Boolean c = null;
  public Integer d = null;
  
  public jxp()
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
        jxn localjxn = a[i];
        if (localjxn != null) {
          paramlxz.b(1, localjxn);
        }
        i += 1;
      }
    }
    if (b != null) {
      paramlxz.b(2, b);
    }
    if (c != null) {
      paramlxz.a(3, c.booleanValue());
    }
    if (d != null) {
      paramlxz.a(4, d.intValue());
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i = super.b();
    int j = i;
    if (a != null)
    {
      j = i;
      if (a.length > 0)
      {
        int k = 0;
        for (;;)
        {
          j = i;
          if (k >= a.length) {
            break;
          }
          jxn localjxn = a[k];
          j = i;
          if (localjxn != null) {
            j = i + lxz.d(1, localjxn);
          }
          k += 1;
          i = j;
        }
      }
    }
    i = j;
    if (b != null) {
      i = j + lxz.d(2, b);
    }
    j = i;
    if (c != null)
    {
      c.booleanValue();
      j = i + (lxz.f(3) + 1);
    }
    i = j;
    if (d != null) {
      i = j + lxz.e(4, d.intValue());
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     jxp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */