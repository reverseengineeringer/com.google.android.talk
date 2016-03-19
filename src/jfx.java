public final class jfx
  extends lyb<jfx>
{
  private static volatile jfx[] r;
  public String a = null;
  public jgb b = null;
  public jey c = null;
  public int d = Integer.MIN_VALUE;
  public jfv e = null;
  public jfw f = null;
  public jgb g = null;
  public jey h = null;
  public String[] i = lyo.f;
  public jgb[] j = jgb.d();
  public jey[] k = jey.d();
  public Boolean l = null;
  public Boolean m = null;
  public Boolean n = null;
  public int o = Integer.MIN_VALUE;
  public jgf p = null;
  public String q = null;
  
  public jfx()
  {
    eD = null;
    eE = -1;
  }
  
  public static jfx[] d()
  {
    if (r == null) {}
    synchronized (lyf.a)
    {
      if (r == null) {
        r = new jfx[0];
      }
      return r;
    }
  }
  
  public void a(lxz paramlxz)
  {
    int i2 = 0;
    paramlxz.a(1, a);
    if (b != null) {
      paramlxz.b(2, b);
    }
    if (d != Integer.MIN_VALUE) {
      paramlxz.a(3, d);
    }
    if (e != null) {
      paramlxz.b(4, e);
    }
    if (g != null) {
      paramlxz.b(5, g);
    }
    int i1;
    Object localObject;
    if ((i != null) && (i.length > 0))
    {
      i1 = 0;
      while (i1 < i.length)
      {
        localObject = i[i1];
        if (localObject != null) {
          paramlxz.a(6, (String)localObject);
        }
        i1 += 1;
      }
    }
    if ((j != null) && (j.length > 0))
    {
      i1 = 0;
      while (i1 < j.length)
      {
        localObject = j[i1];
        if (localObject != null) {
          paramlxz.b(7, (lyi)localObject);
        }
        i1 += 1;
      }
    }
    if (l != null) {
      paramlxz.a(8, l.booleanValue());
    }
    if (m != null) {
      paramlxz.a(9, m.booleanValue());
    }
    if (o != Integer.MIN_VALUE) {
      paramlxz.a(10, o);
    }
    if (p != null) {
      paramlxz.b(11, p);
    }
    if (f != null) {
      paramlxz.b(12, f);
    }
    if (n != null) {
      paramlxz.a(13, n.booleanValue());
    }
    if (q != null) {
      paramlxz.a(14, q);
    }
    if (c != null) {
      paramlxz.b(15, c);
    }
    if (h != null) {
      paramlxz.b(16, h);
    }
    if ((k != null) && (k.length > 0))
    {
      i1 = i2;
      while (i1 < k.length)
      {
        localObject = k[i1];
        if (localObject != null) {
          paramlxz.b(17, (lyi)localObject);
        }
        i1 += 1;
      }
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i7 = 0;
    int i2 = super.b() + lxz.b(1, a);
    int i1 = i2;
    if (b != null) {
      i1 = i2 + lxz.d(2, b);
    }
    i2 = i1;
    if (d != Integer.MIN_VALUE) {
      i2 = i1 + lxz.e(3, d);
    }
    i1 = i2;
    if (e != null) {
      i1 = i2 + lxz.d(4, e);
    }
    i2 = i1;
    if (g != null) {
      i2 = i1 + lxz.d(5, g);
    }
    i1 = i2;
    Object localObject;
    if (i != null)
    {
      i1 = i2;
      if (i.length > 0)
      {
        i1 = 0;
        i3 = 0;
        int i5;
        for (int i4 = 0; i1 < i.length; i4 = i5)
        {
          localObject = i[i1];
          int i6 = i3;
          i5 = i4;
          if (localObject != null)
          {
            i5 = i4 + 1;
            i6 = i3 + lxz.a((String)localObject);
          }
          i1 += 1;
          i3 = i6;
        }
        i1 = i2 + i3 + i4 * 1;
      }
    }
    i2 = i1;
    if (j != null)
    {
      i2 = i1;
      if (j.length > 0)
      {
        i2 = 0;
        while (i2 < j.length)
        {
          localObject = j[i2];
          i3 = i1;
          if (localObject != null) {
            i3 = i1 + lxz.d(7, (lyi)localObject);
          }
          i2 += 1;
          i1 = i3;
        }
        i2 = i1;
      }
    }
    i1 = i2;
    if (l != null)
    {
      l.booleanValue();
      i1 = i2 + (lxz.f(8) + 1);
    }
    i2 = i1;
    if (m != null)
    {
      m.booleanValue();
      i2 = i1 + (lxz.f(9) + 1);
    }
    i1 = i2;
    if (o != Integer.MIN_VALUE) {
      i1 = i2 + lxz.e(10, o);
    }
    i2 = i1;
    if (p != null) {
      i2 = i1 + lxz.d(11, p);
    }
    i1 = i2;
    if (f != null) {
      i1 = i2 + lxz.d(12, f);
    }
    i2 = i1;
    if (n != null)
    {
      n.booleanValue();
      i2 = i1 + (lxz.f(13) + 1);
    }
    i1 = i2;
    if (q != null) {
      i1 = i2 + lxz.b(14, q);
    }
    i2 = i1;
    if (c != null) {
      i2 = i1 + lxz.d(15, c);
    }
    i1 = i2;
    if (h != null) {
      i1 = i2 + lxz.d(16, h);
    }
    int i3 = i1;
    if (k != null)
    {
      i3 = i1;
      if (k.length > 0)
      {
        i2 = i7;
        for (;;)
        {
          i3 = i1;
          if (i2 >= k.length) {
            break;
          }
          localObject = k[i2];
          i3 = i1;
          if (localObject != null) {
            i3 = i1 + lxz.d(17, (lyi)localObject);
          }
          i2 += 1;
          i1 = i3;
        }
      }
    }
    return i3;
  }
}

/* Location:
 * Qualified Name:     jfx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */