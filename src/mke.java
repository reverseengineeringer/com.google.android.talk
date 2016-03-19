public final class mke
  extends lyb<mke>
{
  public mkg[] a = mkg.d();
  public mkg b = null;
  public String c = null;
  public String d = null;
  public String e = null;
  public String f = null;
  public String g = null;
  public String h = null;
  public String i = null;
  public String j = null;
  public String k = null;
  public String l = null;
  public mkf m = null;
  public String n = null;
  public Boolean o = null;
  
  public mke()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if ((a != null) && (a.length > 0))
    {
      int i1 = 0;
      while (i1 < a.length)
      {
        mkg localmkg = a[i1];
        if (localmkg != null) {
          paramlxz.b(1, localmkg);
        }
        i1 += 1;
      }
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
    if (e != null) {
      paramlxz.a(11, e);
    }
    if (f != null) {
      paramlxz.a(12, f);
    }
    if (g != null) {
      paramlxz.a(13, g);
    }
    if (h != null) {
      paramlxz.a(14, h);
    }
    if (i != null) {
      paramlxz.a(15, i);
    }
    if (j != null) {
      paramlxz.a(16, j);
    }
    if (m != null) {
      paramlxz.b(17, m);
    }
    if (n != null) {
      paramlxz.a(18, n);
    }
    if (o != null) {
      paramlxz.a(19, o.booleanValue());
    }
    if (k != null) {
      paramlxz.a(20, k);
    }
    if (l != null) {
      paramlxz.a(21, l);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i1 = super.b();
    int i2 = i1;
    if (a != null)
    {
      i2 = i1;
      if (a.length > 0)
      {
        int i3 = 0;
        for (;;)
        {
          i2 = i1;
          if (i3 >= a.length) {
            break;
          }
          mkg localmkg = a[i3];
          i2 = i1;
          if (localmkg != null) {
            i2 = i1 + lxz.d(1, localmkg);
          }
          i3 += 1;
          i1 = i2;
        }
      }
    }
    i1 = i2;
    if (b != null) {
      i1 = i2 + lxz.d(2, b);
    }
    i2 = i1;
    if (c != null) {
      i2 = i1 + lxz.b(3, c);
    }
    i1 = i2;
    if (d != null) {
      i1 = i2 + lxz.b(4, d);
    }
    i2 = i1;
    if (e != null) {
      i2 = i1 + lxz.b(11, e);
    }
    i1 = i2;
    if (f != null) {
      i1 = i2 + lxz.b(12, f);
    }
    i2 = i1;
    if (g != null) {
      i2 = i1 + lxz.b(13, g);
    }
    i1 = i2;
    if (h != null) {
      i1 = i2 + lxz.b(14, h);
    }
    i2 = i1;
    if (i != null) {
      i2 = i1 + lxz.b(15, i);
    }
    i1 = i2;
    if (j != null) {
      i1 = i2 + lxz.b(16, j);
    }
    i2 = i1;
    if (m != null) {
      i2 = i1 + lxz.d(17, m);
    }
    i1 = i2;
    if (n != null) {
      i1 = i2 + lxz.b(18, n);
    }
    i2 = i1;
    if (o != null)
    {
      o.booleanValue();
      i2 = i1 + (lxz.f(19) + 1);
    }
    i1 = i2;
    if (k != null) {
      i1 = i2 + lxz.b(20, k);
    }
    i2 = i1;
    if (l != null) {
      i2 = i1 + lxz.b(21, l);
    }
    return i2;
  }
}

/* Location:
 * Qualified Name:     mke
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */