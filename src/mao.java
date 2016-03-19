public final class mao
  extends lyb<mao>
{
  public static final lyc<lyu, mao> a = lyc.a(mao.class, 221119658L);
  static final mao[] b = new mao[0];
  public lzn c = null;
  public String d = null;
  public String e = null;
  public String f = null;
  public String[] g = lyo.f;
  public Boolean h = null;
  public String i = null;
  public String j = null;
  public String k = null;
  public String l = null;
  public String m = null;
  public String n = null;
  public String o = null;
  public int p = Integer.MIN_VALUE;
  public lyu q = null;
  public String r = null;
  public String s = null;
  public String t = null;
  public String u = null;
  
  public mao()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (c != null) {
      paramlxz.b(1, c);
    }
    if (d != null) {
      paramlxz.a(2, d);
    }
    if (e != null) {
      paramlxz.a(3, e);
    }
    if (f != null) {
      paramlxz.a(4, f);
    }
    if (h != null) {
      paramlxz.a(5, h.booleanValue());
    }
    if (i != null) {
      paramlxz.a(6, i);
    }
    if (j != null) {
      paramlxz.a(7, j);
    }
    if (k != null) {
      paramlxz.a(8, k);
    }
    if (l != null) {
      paramlxz.a(9, l);
    }
    if (m != null) {
      paramlxz.a(10, m);
    }
    if (n != null) {
      paramlxz.a(11, n);
    }
    if (o != null) {
      paramlxz.a(12, o);
    }
    if (p != Integer.MIN_VALUE) {
      paramlxz.a(13, p);
    }
    if ((g != null) && (g.length > 0))
    {
      int i1 = 0;
      while (i1 < g.length)
      {
        String str = g[i1];
        if (str != null) {
          paramlxz.a(14, str);
        }
        i1 += 1;
      }
    }
    if (q != null) {
      paramlxz.b(15, q);
    }
    if (r != null) {
      paramlxz.a(16, r);
    }
    if (s != null) {
      paramlxz.a(17, s);
    }
    if (t != null) {
      paramlxz.a(18, t);
    }
    if (u != null) {
      paramlxz.a(19, u);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i5 = 0;
    int i2 = super.b();
    int i1 = i2;
    if (c != null) {
      i1 = i2 + lxz.d(1, c);
    }
    i2 = i1;
    if (d != null) {
      i2 = i1 + lxz.b(2, d);
    }
    i1 = i2;
    if (e != null) {
      i1 = i2 + lxz.b(3, e);
    }
    i2 = i1;
    if (f != null) {
      i2 = i1 + lxz.b(4, f);
    }
    i1 = i2;
    if (h != null)
    {
      h.booleanValue();
      i1 = i2 + (lxz.f(5) + 1);
    }
    i2 = i1;
    if (i != null) {
      i2 = i1 + lxz.b(6, i);
    }
    i1 = i2;
    if (j != null) {
      i1 = i2 + lxz.b(7, j);
    }
    i2 = i1;
    if (k != null) {
      i2 = i1 + lxz.b(8, k);
    }
    i1 = i2;
    if (l != null) {
      i1 = i2 + lxz.b(9, l);
    }
    i2 = i1;
    if (m != null) {
      i2 = i1 + lxz.b(10, m);
    }
    i1 = i2;
    if (n != null) {
      i1 = i2 + lxz.b(11, n);
    }
    i2 = i1;
    if (o != null) {
      i2 = i1 + lxz.b(12, o);
    }
    i1 = i2;
    if (p != Integer.MIN_VALUE) {
      i1 = i2 + lxz.e(13, p);
    }
    i2 = i1;
    if (g != null)
    {
      i2 = i1;
      if (g.length > 0)
      {
        int i3 = 0;
        int i4 = 0;
        i2 = i5;
        while (i2 < g.length)
        {
          String str = g[i2];
          int i6 = i3;
          i5 = i4;
          if (str != null)
          {
            i5 = i4 + 1;
            i6 = i3 + lxz.a(str);
          }
          i2 += 1;
          i3 = i6;
          i4 = i5;
        }
        i2 = i1 + i3 + i4 * 1;
      }
    }
    i1 = i2;
    if (q != null) {
      i1 = i2 + lxz.d(15, q);
    }
    i2 = i1;
    if (r != null) {
      i2 = i1 + lxz.b(16, r);
    }
    i1 = i2;
    if (s != null) {
      i1 = i2 + lxz.b(17, s);
    }
    i2 = i1;
    if (t != null) {
      i2 = i1 + lxz.b(18, t);
    }
    i1 = i2;
    if (u != null) {
      i1 = i2 + lxz.b(19, u);
    }
    return i1;
  }
}

/* Location:
 * Qualified Name:     mao
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */