public final class ljc
  extends lyb<ljc>
{
  private static volatile ljc[] d;
  public String a = null;
  public String b = null;
  public ljd[] c = ljd.d();
  
  public ljc()
  {
    eD = null;
    eE = -1;
  }
  
  public static ljc[] d()
  {
    if (d == null) {}
    synchronized (lyf.a)
    {
      if (d == null) {
        d = new ljc[0];
      }
      return d;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a);
    }
    if ((c != null) && (c.length > 0))
    {
      int i = 0;
      while (i < c.length)
      {
        ljd localljd = c[i];
        if (localljd != null) {
          paramlxz.b(2, localljd);
        }
        i += 1;
      }
    }
    if (b != null) {
      paramlxz.a(3, b);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (a != null) {
      i = j + lxz.b(1, a);
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
          ljd localljd = c[j];
          int k = i;
          if (localljd != null) {
            k = i + lxz.d(2, localljd);
          }
          j += 1;
          i = k;
        }
        j = i;
      }
    }
    i = j;
    if (b != null) {
      i = j + lxz.b(3, b);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     ljc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */