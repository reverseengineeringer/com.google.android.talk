public final class jgl
  extends lyb<jgl>
{
  private static volatile jgl[] l;
  public String a = null;
  public String b = null;
  public String[] c = lyo.f;
  public String d = null;
  public jeb e = null;
  public String f = null;
  public jek g = null;
  public jgk h = null;
  public Boolean i = null;
  public jgl[] j = d();
  public Integer k = null;
  
  public jgl()
  {
    eD = null;
    eE = -1;
  }
  
  public static jgl[] d()
  {
    if (l == null) {}
    synchronized (lyf.a)
    {
      if (l == null) {
        l = new jgl[0];
      }
      return l;
    }
  }
  
  public void a(lxz paramlxz)
  {
    int n = 0;
    if (a != null) {
      paramlxz.a(1, a);
    }
    if (b != null) {
      paramlxz.a(2, b);
    }
    int m;
    Object localObject;
    if ((c != null) && (c.length > 0))
    {
      m = 0;
      while (m < c.length)
      {
        localObject = c[m];
        if (localObject != null) {
          paramlxz.a(3, (String)localObject);
        }
        m += 1;
      }
    }
    if (d != null) {
      paramlxz.a(4, d);
    }
    if (e != null) {
      paramlxz.b(5, e);
    }
    if (f != null) {
      paramlxz.a(6, f);
    }
    if (i != null) {
      paramlxz.a(7, i.booleanValue());
    }
    if ((j != null) && (j.length > 0))
    {
      m = n;
      while (m < j.length)
      {
        localObject = j[m];
        if (localObject != null) {
          paramlxz.b(8, (lyi)localObject);
        }
        m += 1;
      }
    }
    if (k != null) {
      paramlxz.a(9, k.intValue());
    }
    if (g != null) {
      paramlxz.b(10, g);
    }
    if (h != null) {
      paramlxz.b(11, h);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i5 = 0;
    int m = super.b();
    int n = m;
    if (a != null) {
      n = m + lxz.b(1, a);
    }
    m = n;
    if (b != null) {
      m = n + lxz.b(2, b);
    }
    n = m;
    Object localObject;
    if (c != null)
    {
      n = m;
      if (c.length > 0)
      {
        n = 0;
        i1 = 0;
        int i3;
        for (int i2 = 0; n < c.length; i2 = i3)
        {
          localObject = c[n];
          int i4 = i1;
          i3 = i2;
          if (localObject != null)
          {
            i3 = i2 + 1;
            i4 = i1 + lxz.a((String)localObject);
          }
          n += 1;
          i1 = i4;
        }
        n = m + i1 + i2 * 1;
      }
    }
    m = n;
    if (d != null) {
      m = n + lxz.b(4, d);
    }
    n = m;
    if (e != null) {
      n = m + lxz.d(5, e);
    }
    int i1 = n;
    if (f != null) {
      i1 = n + lxz.b(6, f);
    }
    m = i1;
    if (i != null)
    {
      i.booleanValue();
      m = i1 + (lxz.f(7) + 1);
    }
    n = m;
    if (j != null)
    {
      n = m;
      if (j.length > 0)
      {
        i1 = i5;
        for (;;)
        {
          n = m;
          if (i1 >= j.length) {
            break;
          }
          localObject = j[i1];
          n = m;
          if (localObject != null) {
            n = m + lxz.d(8, (lyi)localObject);
          }
          i1 += 1;
          m = n;
        }
      }
    }
    m = n;
    if (k != null) {
      m = n + lxz.e(9, k.intValue());
    }
    n = m;
    if (g != null) {
      n = m + lxz.d(10, g);
    }
    m = n;
    if (h != null) {
      m = n + lxz.d(11, h);
    }
    return m;
  }
}

/* Location:
 * Qualified Name:     jgl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */