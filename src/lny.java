public final class lny
  extends lyb<lny>
{
  private static volatile lny[] r;
  public String a = null;
  public lmo b = null;
  public lns c = null;
  public lnw d = null;
  public lnk e = null;
  public llv f = null;
  public llh g = null;
  public lnu h = null;
  public lno[] i = lno.d();
  public lks j = null;
  public lnn k = null;
  public lnp l = null;
  public loa m = null;
  public lln n = null;
  public lln o = null;
  public lnx p = null;
  public llx q = null;
  
  public lny()
  {
    eD = null;
    eE = -1;
  }
  
  public static lny[] d()
  {
    if (r == null) {}
    synchronized (lyf.a)
    {
      if (r == null) {
        r = new lny[0];
      }
      return r;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a);
    }
    if (c != null) {
      paramlxz.b(2, c);
    }
    if (f != null) {
      paramlxz.b(3, f);
    }
    if (g != null) {
      paramlxz.b(4, g);
    }
    if (d != null) {
      paramlxz.b(5, d);
    }
    if (b != null) {
      paramlxz.b(6, b);
    }
    if (h != null) {
      paramlxz.b(7, h);
    }
    if (e != null) {
      paramlxz.b(8, e);
    }
    if ((i != null) && (i.length > 0))
    {
      int i1 = 0;
      while (i1 < i.length)
      {
        lno locallno = i[i1];
        if (locallno != null) {
          paramlxz.b(9, locallno);
        }
        i1 += 1;
      }
    }
    if (j != null) {
      paramlxz.b(10, j);
    }
    if (k != null) {
      paramlxz.b(11, k);
    }
    if (l != null) {
      paramlxz.b(12, l);
    }
    if (m != null) {
      paramlxz.b(13, m);
    }
    if (n != null) {
      paramlxz.b(14, n);
    }
    if (p != null) {
      paramlxz.b(15, p);
    }
    if (q != null) {
      paramlxz.b(16, q);
    }
    if (o != null) {
      paramlxz.b(17, o);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i2 = super.b();
    int i1 = i2;
    if (a != null) {
      i1 = i2 + lxz.b(1, a);
    }
    i2 = i1;
    if (c != null) {
      i2 = i1 + lxz.d(2, c);
    }
    i1 = i2;
    if (f != null) {
      i1 = i2 + lxz.d(3, f);
    }
    i2 = i1;
    if (g != null) {
      i2 = i1 + lxz.d(4, g);
    }
    i1 = i2;
    if (d != null) {
      i1 = i2 + lxz.d(5, d);
    }
    i2 = i1;
    if (b != null) {
      i2 = i1 + lxz.d(6, b);
    }
    int i3 = i2;
    if (h != null) {
      i3 = i2 + lxz.d(7, h);
    }
    i1 = i3;
    if (e != null) {
      i1 = i3 + lxz.d(8, e);
    }
    i2 = i1;
    if (i != null)
    {
      i2 = i1;
      if (i.length > 0)
      {
        i2 = 0;
        while (i2 < i.length)
        {
          lno locallno = i[i2];
          i3 = i1;
          if (locallno != null) {
            i3 = i1 + lxz.d(9, locallno);
          }
          i2 += 1;
          i1 = i3;
        }
        i2 = i1;
      }
    }
    i1 = i2;
    if (j != null) {
      i1 = i2 + lxz.d(10, j);
    }
    i2 = i1;
    if (k != null) {
      i2 = i1 + lxz.d(11, k);
    }
    i1 = i2;
    if (l != null) {
      i1 = i2 + lxz.d(12, l);
    }
    i2 = i1;
    if (m != null) {
      i2 = i1 + lxz.d(13, m);
    }
    i1 = i2;
    if (n != null) {
      i1 = i2 + lxz.d(14, n);
    }
    i2 = i1;
    if (p != null) {
      i2 = i1 + lxz.d(15, p);
    }
    i1 = i2;
    if (q != null) {
      i1 = i2 + lxz.d(16, q);
    }
    i2 = i1;
    if (o != null) {
      i2 = i1 + lxz.d(17, o);
    }
    return i2;
  }
}

/* Location:
 * Qualified Name:     lny
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */