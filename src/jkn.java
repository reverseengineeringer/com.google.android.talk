public final class jkn
  extends lyb<jkn>
{
  public jkw[] a = jkw.c;
  public jpj[] b = jpj.d();
  public String c = null;
  public jkp d = null;
  public String e = null;
  public jjk[] f = jjk.d();
  public jke g = null;
  public Integer h = null;
  public jot i = null;
  public byte[] j = null;
  public joz k = null;
  public jot[] l = jot.d();
  public jkt m = null;
  
  public jkn()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    int i1 = 0;
    int n;
    Object localObject;
    if ((a != null) && (a.length > 0))
    {
      n = 0;
      while (n < a.length)
      {
        localObject = a[n];
        if (localObject != null) {
          paramlxz.b(1, (lyi)localObject);
        }
        n += 1;
      }
    }
    if (c != null) {
      paramlxz.a(2, c);
    }
    if (d != null) {
      paramlxz.b(3, d);
    }
    if (e != null) {
      paramlxz.a(4, e);
    }
    if ((f != null) && (f.length > 0))
    {
      n = 0;
      while (n < f.length)
      {
        localObject = f[n];
        if (localObject != null) {
          paramlxz.b(5, (lyi)localObject);
        }
        n += 1;
      }
    }
    if (g != null) {
      paramlxz.b(6, g);
    }
    if (h != null) {
      paramlxz.a(7, h.intValue());
    }
    if ((b != null) && (b.length > 0))
    {
      n = 0;
      while (n < b.length)
      {
        localObject = b[n];
        if (localObject != null) {
          paramlxz.b(8, (lyi)localObject);
        }
        n += 1;
      }
    }
    if (i != null) {
      paramlxz.b(9, i);
    }
    if (j != null) {
      paramlxz.a(10, j);
    }
    if (k != null) {
      paramlxz.b(11, k);
    }
    if ((l != null) && (l.length > 0))
    {
      n = i1;
      while (n < l.length)
      {
        localObject = l[n];
        if (localObject != null) {
          paramlxz.b(12, (lyi)localObject);
        }
        n += 1;
      }
    }
    if (m != null) {
      paramlxz.b(13, m);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i3 = 0;
    int i1 = super.b();
    int n = i1;
    Object localObject;
    if (a != null)
    {
      n = i1;
      if (a.length > 0)
      {
        n = i1;
        i1 = 0;
        while (i1 < a.length)
        {
          localObject = a[i1];
          i2 = n;
          if (localObject != null) {
            i2 = n + lxz.d(1, (lyi)localObject);
          }
          i1 += 1;
          n = i2;
        }
      }
    }
    i1 = n;
    if (c != null) {
      i1 = n + lxz.b(2, c);
    }
    int i2 = i1;
    if (d != null) {
      i2 = i1 + lxz.d(3, d);
    }
    n = i2;
    if (e != null) {
      n = i2 + lxz.b(4, e);
    }
    i1 = n;
    if (f != null)
    {
      i1 = n;
      if (f.length > 0)
      {
        i1 = 0;
        while (i1 < f.length)
        {
          localObject = f[i1];
          i2 = n;
          if (localObject != null) {
            i2 = n + lxz.d(5, (lyi)localObject);
          }
          i1 += 1;
          n = i2;
        }
        i1 = n;
      }
    }
    i2 = i1;
    if (g != null) {
      i2 = i1 + lxz.d(6, g);
    }
    n = i2;
    if (h != null) {
      n = i2 + lxz.e(7, h.intValue());
    }
    i1 = n;
    if (b != null)
    {
      i1 = n;
      if (b.length > 0)
      {
        i1 = 0;
        while (i1 < b.length)
        {
          localObject = b[i1];
          i2 = n;
          if (localObject != null) {
            i2 = n + lxz.d(8, (lyi)localObject);
          }
          i1 += 1;
          n = i2;
        }
        i1 = n;
      }
    }
    n = i1;
    if (i != null) {
      n = i1 + lxz.d(9, i);
    }
    i1 = n;
    if (j != null) {
      i1 = n + lxz.b(10, j);
    }
    n = i1;
    if (k != null) {
      n = i1 + lxz.d(11, k);
    }
    i1 = n;
    if (l != null)
    {
      i1 = n;
      if (l.length > 0)
      {
        i2 = i3;
        for (;;)
        {
          i1 = n;
          if (i2 >= l.length) {
            break;
          }
          localObject = l[i2];
          i1 = n;
          if (localObject != null) {
            i1 = n + lxz.d(12, (lyi)localObject);
          }
          i2 += 1;
          n = i1;
        }
      }
    }
    n = i1;
    if (m != null) {
      n = i1 + lxz.d(13, m);
    }
    return n;
  }
}

/* Location:
 * Qualified Name:     jkn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */