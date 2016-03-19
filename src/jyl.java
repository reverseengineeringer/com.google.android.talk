public final class jyl
  extends lyb<jyl>
{
  private static volatile jyl[] e;
  public Integer a = null;
  public Long b = null;
  public Long c = null;
  public String[] d = lyo.f;
  
  public jyl()
  {
    eD = null;
    eE = -1;
  }
  
  public static jyl[] d()
  {
    if (e == null) {}
    synchronized (lyf.a)
    {
      if (e == null) {
        e = new jyl[0];
      }
      return e;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (b != null) {
      paramlxz.a(1, b.longValue());
    }
    if (c != null) {
      paramlxz.a(2, c.longValue());
    }
    if (a != null) {
      paramlxz.a(3, a.intValue());
    }
    if ((d != null) && (d.length > 0))
    {
      int i = 0;
      while (i < d.length)
      {
        String str = d[i];
        if (str != null) {
          paramlxz.a(4, str);
        }
        i += 1;
      }
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int n = 0;
    int j = super.b();
    int i = j;
    if (b != null) {
      i = j + lxz.d(1, b.longValue());
    }
    j = i;
    if (c != null) {
      j = i + lxz.d(2, c.longValue());
    }
    i = j;
    if (a != null) {
      i = j + lxz.e(3, a.intValue());
    }
    j = i;
    if (d != null)
    {
      j = i;
      if (d.length > 0)
      {
        int k = 0;
        int m = 0;
        j = n;
        while (j < d.length)
        {
          String str = d[j];
          int i1 = k;
          n = m;
          if (str != null)
          {
            n = m + 1;
            i1 = k + lxz.a(str);
          }
          j += 1;
          k = i1;
          m = n;
        }
        j = i + k + m * 1;
      }
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     jyl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */