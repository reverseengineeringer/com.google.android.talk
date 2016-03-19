public final class mfp
  extends lyb<mfp>
{
  private static volatile mfp[] s;
  public Long a = null;
  public Long b = null;
  public Boolean c = null;
  public String d = null;
  public String e = null;
  public mfr f = null;
  public Integer g = null;
  public String h = null;
  public String i = null;
  public String j = null;
  public String k = null;
  public mfy[] l = mfy.d();
  public String m = null;
  public byte[] n = null;
  public mfa o = null;
  public String p = null;
  public mfq q = null;
  public mff r = null;
  
  public mfp()
  {
    eD = null;
    eE = -1;
  }
  
  public static mfp[] d()
  {
    if (s == null) {}
    synchronized (lyf.a)
    {
      if (s == null) {
        s = new mfp[0];
      }
      return s;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.b(1, a.longValue());
    }
    if (b != null) {
      paramlxz.b(2, b.longValue());
    }
    if (d != null) {
      paramlxz.a(3, d);
    }
    if (e != null) {
      paramlxz.a(4, e);
    }
    if (f != null) {
      paramlxz.b(5, f);
    }
    if (h != null) {
      paramlxz.a(6, h);
    }
    if (n != null) {
      paramlxz.a(7, n);
    }
    if (o != null) {
      paramlxz.b(8, o);
    }
    if (p != null) {
      paramlxz.a(9, p);
    }
    if ((l != null) && (l.length > 0))
    {
      int i1 = 0;
      while (i1 < l.length)
      {
        mfy localmfy = l[i1];
        if (localmfy != null) {
          paramlxz.b(10, localmfy);
        }
        i1 += 1;
      }
    }
    if (q != null) {
      paramlxz.b(11, q);
    }
    if (m != null) {
      paramlxz.a(12, m);
    }
    if (g != null) {
      paramlxz.b(13, g.intValue());
    }
    if (c != null) {
      paramlxz.a(15, c.booleanValue());
    }
    if (r != null) {
      paramlxz.b(16, r);
    }
    if (i != null) {
      paramlxz.a(17, i);
    }
    if (j != null) {
      paramlxz.a(19, j);
    }
    if (k != null) {
      paramlxz.a(20, k);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i2 = super.b();
    int i1 = i2;
    if (a != null) {
      i1 = i2 + lxz.e(1, a.longValue());
    }
    i2 = i1;
    if (b != null) {
      i2 = i1 + lxz.e(2, b.longValue());
    }
    i1 = i2;
    if (d != null) {
      i1 = i2 + lxz.b(3, d);
    }
    i2 = i1;
    if (e != null) {
      i2 = i1 + lxz.b(4, e);
    }
    i1 = i2;
    if (f != null) {
      i1 = i2 + lxz.d(5, f);
    }
    i2 = i1;
    if (h != null) {
      i2 = i1 + lxz.b(6, h);
    }
    i1 = i2;
    if (n != null) {
      i1 = i2 + lxz.b(7, n);
    }
    i2 = i1;
    if (o != null) {
      i2 = i1 + lxz.d(8, o);
    }
    i1 = i2;
    if (p != null) {
      i1 = i2 + lxz.b(9, p);
    }
    i2 = i1;
    if (l != null)
    {
      i2 = i1;
      if (l.length > 0)
      {
        i2 = 0;
        while (i2 < l.length)
        {
          mfy localmfy = l[i2];
          int i3 = i1;
          if (localmfy != null) {
            i3 = i1 + lxz.d(10, localmfy);
          }
          i2 += 1;
          i1 = i3;
        }
        i2 = i1;
      }
    }
    i1 = i2;
    if (q != null) {
      i1 = i2 + lxz.d(11, q);
    }
    i2 = i1;
    if (m != null) {
      i2 = i1 + lxz.b(12, m);
    }
    i1 = i2;
    if (g != null)
    {
      g.intValue();
      i1 = i2 + (lxz.f(13) + 4);
    }
    i2 = i1;
    if (c != null)
    {
      c.booleanValue();
      i2 = i1 + (lxz.f(15) + 1);
    }
    i1 = i2;
    if (r != null) {
      i1 = i2 + lxz.d(16, r);
    }
    i2 = i1;
    if (i != null) {
      i2 = i1 + lxz.b(17, i);
    }
    i1 = i2;
    if (j != null) {
      i1 = i2 + lxz.b(19, j);
    }
    i2 = i1;
    if (k != null) {
      i2 = i1 + lxz.b(20, k);
    }
    return i2;
  }
}

/* Location:
 * Qualified Name:     mfp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */