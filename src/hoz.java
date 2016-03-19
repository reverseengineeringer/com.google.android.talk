public final class hoz
  extends lyi
{
  private static volatile hoz[] g;
  public String a = "";
  public String b = "";
  public String[] c = lyo.f;
  public String d = "";
  public boolean e = false;
  public String f = "";
  
  public hoz()
  {
    eE = -1;
  }
  
  public static hoz[] d()
  {
    if (g == null) {}
    synchronized (lyf.a)
    {
      if (g == null) {
        g = new hoz[0];
      }
      return g;
    }
  }
  
  public void a(lxz paramlxz)
  {
    paramlxz.a(1, a);
    paramlxz.a(2, b);
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
    if (!d.equals("")) {
      paramlxz.a(4, d);
    }
    if (!f.equals("")) {
      paramlxz.a(5, f);
    }
    if (e) {
      paramlxz.a(6, e);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i = 0;
    int i1 = super.b() + lxz.b(1, a) + lxz.b(2, b);
    int k;
    if ((c != null) && (c.length > 0))
    {
      j = 0;
      int m;
      for (k = 0; i < c.length; k = m)
      {
        String str = c[i];
        int n = j;
        m = k;
        if (str != null)
        {
          m = k + 1;
          n = j + lxz.a(str);
        }
        i += 1;
        j = n;
      }
    }
    for (int j = i1 + j + k * 1;; j = i1)
    {
      i = j;
      if (!d.equals("")) {
        i = j + lxz.b(4, d);
      }
      j = i;
      if (!f.equals("")) {
        j = i + lxz.b(5, f);
      }
      i = j;
      if (e) {
        i = j + lxz.d(6);
      }
      return i;
    }
  }
}

/* Location:
 * Qualified Name:     hoz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */