public final class lbr
  extends lyb<lbr>
{
  private static volatile lbr[] g;
  public Integer a = null;
  public lby[] b = lby.d();
  public Integer c = null;
  public lbu d = null;
  public lbt e = null;
  public msu f = null;
  
  public lbr()
  {
    eD = null;
    eE = -1;
  }
  
  public static lbr[] d()
  {
    if (g == null) {}
    synchronized (lyf.a)
    {
      if (g == null) {
        g = new lbr[0];
      }
      return g;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a.intValue());
    }
    if ((b != null) && (b.length > 0))
    {
      int i = 0;
      while (i < b.length)
      {
        lby locallby = b[i];
        if (locallby != null) {
          paramlxz.b(3, locallby);
        }
        i += 1;
      }
    }
    if (c != null) {
      paramlxz.a(4, c.intValue());
    }
    if (d != null) {
      paramlxz.b(5, d);
    }
    if (e != null) {
      paramlxz.b(6, e);
    }
    if (f != null) {
      paramlxz.b(15, f);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (a != null) {
      i = j + lxz.e(1, a.intValue());
    }
    j = i;
    if (b != null)
    {
      j = i;
      if (b.length > 0)
      {
        j = 0;
        while (j < b.length)
        {
          lby locallby = b[j];
          int k = i;
          if (locallby != null) {
            k = i + lxz.d(3, locallby);
          }
          j += 1;
          i = k;
        }
        j = i;
      }
    }
    i = j;
    if (c != null) {
      i = j + lxz.e(4, c.intValue());
    }
    j = i;
    if (d != null) {
      j = i + lxz.d(5, d);
    }
    i = j;
    if (e != null) {
      i = j + lxz.d(6, e);
    }
    j = i;
    if (f != null) {
      j = i + lxz.d(15, f);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     lbr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */