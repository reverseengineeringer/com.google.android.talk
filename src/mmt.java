public final class mmt
  extends lyb<mmt>
{
  private static volatile mmt[] f;
  public String[] a = lyo.f;
  public String b = null;
  public mms[] c = mms.d();
  public Boolean d = null;
  public Boolean e = null;
  
  public mmt()
  {
    eD = null;
    eE = -1;
  }
  
  public static mmt[] d()
  {
    if (f == null) {}
    synchronized (lyf.a)
    {
      if (f == null) {
        f = new mmt[0];
      }
      return f;
    }
  }
  
  public void a(lxz paramlxz)
  {
    int j = 0;
    int i;
    Object localObject;
    if ((a != null) && (a.length > 0))
    {
      i = 0;
      while (i < a.length)
      {
        localObject = a[i];
        if (localObject != null) {
          paramlxz.a(1, (String)localObject);
        }
        i += 1;
      }
    }
    if (b != null) {
      paramlxz.a(2, b);
    }
    if ((c != null) && (c.length > 0))
    {
      i = j;
      while (i < c.length)
      {
        localObject = c[i];
        if (localObject != null) {
          paramlxz.b(3, (lyi)localObject);
        }
        i += 1;
      }
    }
    if (d != null) {
      paramlxz.a(4, d.booleanValue());
    }
    if (e != null) {
      paramlxz.a(5, e.booleanValue());
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i1 = 0;
    int i2 = super.b();
    int i;
    int k;
    Object localObject;
    if ((a != null) && (a.length > 0))
    {
      i = 0;
      j = 0;
      int m;
      for (k = 0; i < a.length; k = m)
      {
        localObject = a[i];
        int n = j;
        m = k;
        if (localObject != null)
        {
          m = k + 1;
          n = j + lxz.a((String)localObject);
        }
        i += 1;
        j = n;
      }
    }
    for (int j = i2 + j + k * 1;; j = i2)
    {
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
          k = i1;
          for (;;)
          {
            j = i;
            if (k >= c.length) {
              break;
            }
            localObject = c[k];
            j = i;
            if (localObject != null) {
              j = i + lxz.d(3, (lyi)localObject);
            }
            k += 1;
            i = j;
          }
        }
      }
      i = j;
      if (d != null)
      {
        d.booleanValue();
        i = j + (lxz.f(4) + 1);
      }
      j = i;
      if (e != null)
      {
        e.booleanValue();
        j = i + (lxz.f(5) + 1);
      }
      return j;
    }
  }
}

/* Location:
 * Qualified Name:     mmt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */