public final class ixs
  extends lyb<ixs>
{
  private static volatile ixs[] f;
  public ixc a = null;
  public String b = null;
  public String c = null;
  public String d = null;
  public ixt[] e = ixt.d();
  
  public ixs()
  {
    eD = null;
    eE = -1;
  }
  
  public static ixs[] d()
  {
    if (f == null) {}
    synchronized (lyf.a)
    {
      if (f == null) {
        f = new ixs[0];
      }
      return f;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.b(1, a);
    }
    if (b != null) {
      paramlxz.a(2, b);
    }
    if (c != null) {
      paramlxz.a(3, c);
    }
    if (d != null) {
      paramlxz.a(4, d);
    }
    if ((e != null) && (e.length > 0))
    {
      int i = 0;
      while (i < e.length)
      {
        ixt localixt = e[i];
        if (localixt != null) {
          paramlxz.b(5, localixt);
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
    if (a != null) {
      i = j + lxz.d(1, a);
    }
    j = i;
    if (b != null) {
      j = i + lxz.b(2, b);
    }
    int k = j;
    if (c != null) {
      k = j + lxz.b(3, c);
    }
    i = k;
    if (d != null) {
      i = k + lxz.b(4, d);
    }
    j = i;
    if (e != null)
    {
      j = i;
      if (e.length > 0)
      {
        j = 0;
        while (j < e.length)
        {
          ixt localixt = e[j];
          k = i;
          if (localixt != null) {
            k = i + lxz.d(5, localixt);
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
 * Qualified Name:     ixs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */