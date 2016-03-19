public final class mhk
  extends lyb<mhk>
{
  private static volatile mhk[] h;
  public String a = null;
  public String b = null;
  public String[] c = lyo.f;
  public Integer d = null;
  public String e = null;
  public String f = null;
  public String g = null;
  
  public mhk()
  {
    eD = null;
    eE = -1;
  }
  
  public static mhk[] d()
  {
    if (h == null) {}
    synchronized (lyf.a)
    {
      if (h == null) {
        h = new mhk[0];
      }
      return h;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a);
    }
    if (b != null) {
      paramlxz.a(2, b);
    }
    if ((c != null) && (c.length > 0))
    {
      int i = 0;
      while (i < c.length)
      {
        String str = c[i];
        if (str != null) {
          paramlxz.a(3, str);
        }
        i += 1;
      }
    }
    if (d != null) {
      paramlxz.a(4, d.intValue());
    }
    if (e != null) {
      paramlxz.a(5, e);
    }
    if (f != null) {
      paramlxz.a(6, f);
    }
    if (g != null) {
      paramlxz.a(7, g);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int n = 0;
    int i = super.b();
    int j = i;
    if (a != null) {
      j = i + lxz.b(1, a);
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
        int k = 0;
        int m = 0;
        j = n;
        while (j < c.length)
        {
          String str = c[j];
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
    i = j;
    if (d != null) {
      i = j + lxz.e(4, d.intValue());
    }
    j = i;
    if (e != null) {
      j = i + lxz.b(5, e);
    }
    i = j;
    if (f != null) {
      i = j + lxz.b(6, f);
    }
    j = i;
    if (g != null) {
      j = i + lxz.b(7, g);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     mhk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */