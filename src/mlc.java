public final class mlc
  extends lyb<mlc>
{
  private static volatile mlc[] g;
  public mks a = null;
  public mmt[] b = mmt.d();
  public String c = null;
  public String d = null;
  public Long e = null;
  public Long f = null;
  
  public mlc()
  {
    eD = null;
    eE = -1;
  }
  
  public static mlc[] d()
  {
    if (g == null) {}
    synchronized (lyf.a)
    {
      if (g == null) {
        g = new mlc[0];
      }
      return g;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.b(1, a);
    }
    if ((b != null) && (b.length > 0))
    {
      int i = 0;
      while (i < b.length)
      {
        mmt localmmt = b[i];
        if (localmmt != null) {
          paramlxz.b(2, localmmt);
        }
        i += 1;
      }
    }
    paramlxz.a(3, c);
    if (d != null) {
      paramlxz.a(4, d);
    }
    if (e != null) {
      paramlxz.b(5, e.longValue());
    }
    if (f != null) {
      paramlxz.b(6, f.longValue());
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
    if (b != null)
    {
      j = i;
      if (b.length > 0)
      {
        j = 0;
        while (j < b.length)
        {
          mmt localmmt = b[j];
          int k = i;
          if (localmmt != null) {
            k = i + lxz.d(2, localmmt);
          }
          j += 1;
          i = k;
        }
        j = i;
      }
    }
    j += lxz.b(3, c);
    i = j;
    if (d != null) {
      i = j + lxz.b(4, d);
    }
    j = i;
    if (e != null) {
      j = i + lxz.e(5, e.longValue());
    }
    i = j;
    if (f != null) {
      i = j + lxz.e(6, f.longValue());
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     mlc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */