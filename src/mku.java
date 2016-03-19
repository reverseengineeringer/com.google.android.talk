public final class mku
  extends lyb<mku>
{
  private static volatile mku[] l;
  public String a = null;
  public String b = null;
  public String c = null;
  public String d = null;
  public String e = null;
  public mks f = null;
  public String g = null;
  public String h = null;
  public String i = null;
  public mks j = null;
  public mkw[] k = mkw.d();
  
  public mku()
  {
    eD = null;
    eE = -1;
  }
  
  public static mku[] d()
  {
    if (l == null) {}
    synchronized (lyf.a)
    {
      if (l == null) {
        l = new mku[0];
      }
      return l;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (b != null) {
      paramlxz.a(1, b);
    }
    if (c != null) {
      paramlxz.a(2, c);
    }
    if (f != null) {
      paramlxz.b(4, f);
    }
    if (g != null) {
      paramlxz.a(5, g);
    }
    if (i != null) {
      paramlxz.a(6, i);
    }
    if (j != null) {
      paramlxz.b(7, j);
    }
    if (h != null) {
      paramlxz.a(8, h);
    }
    if ((k != null) && (k.length > 0))
    {
      int m = 0;
      while (m < k.length)
      {
        mkw localmkw = k[m];
        if (localmkw != null) {
          paramlxz.b(9, localmkw);
        }
        m += 1;
      }
    }
    if (a != null) {
      paramlxz.a(10, a);
    }
    if (d != null) {
      paramlxz.a(11, d);
    }
    if (e != null) {
      paramlxz.a(12, e);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int n = super.b();
    int m = n;
    if (b != null) {
      m = n + lxz.b(1, b);
    }
    n = m;
    if (c != null) {
      n = m + lxz.b(2, c);
    }
    m = n;
    if (f != null) {
      m = n + lxz.d(4, f);
    }
    n = m;
    if (g != null) {
      n = m + lxz.b(5, g);
    }
    m = n;
    if (i != null) {
      m = n + lxz.b(6, i);
    }
    n = m;
    if (j != null) {
      n = m + lxz.d(7, j);
    }
    m = n;
    if (h != null) {
      m = n + lxz.b(8, h);
    }
    n = m;
    if (k != null)
    {
      n = m;
      if (k.length > 0)
      {
        n = 0;
        while (n < k.length)
        {
          mkw localmkw = k[n];
          int i1 = m;
          if (localmkw != null) {
            i1 = m + lxz.d(9, localmkw);
          }
          n += 1;
          m = i1;
        }
        n = m;
      }
    }
    m = n;
    if (a != null) {
      m = n + lxz.b(10, a);
    }
    n = m;
    if (d != null) {
      n = m + lxz.b(11, d);
    }
    m = n;
    if (e != null) {
      m = n + lxz.b(12, e);
    }
    return m;
  }
}

/* Location:
 * Qualified Name:     mku
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */