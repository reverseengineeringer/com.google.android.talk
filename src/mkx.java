public final class mkx
  extends lyb<mkx>
{
  private static volatile mkx[] n;
  public Integer a = null;
  public mky b = null;
  public String c = null;
  public String d = null;
  public String e = null;
  public String f = null;
  public Integer g = null;
  public String h = null;
  public Integer i = null;
  public mkz j = null;
  public mky[] k = mky.d();
  public mkp l = null;
  public String m = null;
  
  public mkx()
  {
    eD = null;
    eE = -1;
  }
  
  public static mkx[] d()
  {
    if (n == null) {}
    synchronized (lyf.a)
    {
      if (n == null) {
        n = new mkx[0];
      }
      return n;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a.intValue());
    }
    if (b != null) {
      paramlxz.b(2, b);
    }
    if (c != null) {
      paramlxz.a(3, c);
    }
    if (d != null) {
      paramlxz.a(4, d);
    }
    if (f != null) {
      paramlxz.a(5, f);
    }
    if (h != null) {
      paramlxz.a(6, h);
    }
    if (i != null) {
      paramlxz.a(7, i.intValue());
    }
    if (j != null) {
      paramlxz.b(8, j);
    }
    if (g != null) {
      paramlxz.a(9, g.intValue());
    }
    if ((k != null) && (k.length > 0))
    {
      int i1 = 0;
      while (i1 < k.length)
      {
        mky localmky = k[i1];
        if (localmky != null) {
          paramlxz.b(10, localmky);
        }
        i1 += 1;
      }
    }
    if (l != null) {
      paramlxz.b(11, l);
    }
    if (e != null) {
      paramlxz.a(12, e);
    }
    if (m != null) {
      paramlxz.a(13, m);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i2 = super.b();
    int i1 = i2;
    if (a != null) {
      i1 = i2 + lxz.e(1, a.intValue());
    }
    i2 = i1;
    if (b != null) {
      i2 = i1 + lxz.d(2, b);
    }
    i1 = i2;
    if (c != null) {
      i1 = i2 + lxz.b(3, c);
    }
    i2 = i1;
    if (d != null) {
      i2 = i1 + lxz.b(4, d);
    }
    i1 = i2;
    if (f != null) {
      i1 = i2 + lxz.b(5, f);
    }
    i2 = i1;
    if (h != null) {
      i2 = i1 + lxz.b(6, h);
    }
    i1 = i2;
    if (i != null) {
      i1 = i2 + lxz.e(7, i.intValue());
    }
    i2 = i1;
    if (j != null) {
      i2 = i1 + lxz.d(8, j);
    }
    i1 = i2;
    if (g != null) {
      i1 = i2 + lxz.e(9, g.intValue());
    }
    i2 = i1;
    if (k != null)
    {
      i2 = i1;
      if (k.length > 0)
      {
        i2 = 0;
        while (i2 < k.length)
        {
          mky localmky = k[i2];
          int i3 = i1;
          if (localmky != null) {
            i3 = i1 + lxz.d(10, localmky);
          }
          i2 += 1;
          i1 = i3;
        }
        i2 = i1;
      }
    }
    i1 = i2;
    if (l != null) {
      i1 = i2 + lxz.d(11, l);
    }
    i2 = i1;
    if (e != null) {
      i2 = i1 + lxz.b(12, e);
    }
    i1 = i2;
    if (m != null) {
      i1 = i2 + lxz.b(13, m);
    }
    return i1;
  }
}

/* Location:
 * Qualified Name:     mkx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */