public final class mca
  extends lyb<mca>
{
  public Boolean A = null;
  public byte[] B = null;
  public Boolean C = null;
  public String a = null;
  public Long b = null;
  public String c = null;
  public Long d = null;
  public String e = null;
  public int f = Integer.MIN_VALUE;
  public String g = null;
  public byte[] h = null;
  public byte[] i = null;
  public byte[] j = null;
  public String k = null;
  public String l = null;
  public mbq[] m = mbq.d();
  public byte[] n = null;
  public mcb o = null;
  public mbp p = null;
  public mbw q = null;
  public mbs r = null;
  public mbt s = null;
  public mbu t = null;
  public mbv u = null;
  public mbr v = null;
  public mbx w = null;
  public Integer x = null;
  public byte[] y = null;
  public byte[] z = null;
  
  public mca()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a);
    }
    if (b != null) {
      paramlxz.a(2, b.longValue());
    }
    if (c != null) {
      paramlxz.a(3, c);
    }
    if (d != null) {
      paramlxz.b(4, d.longValue());
    }
    if (e != null) {
      paramlxz.a(5, e);
    }
    if (f != Integer.MIN_VALUE) {
      paramlxz.a(6, f);
    }
    if (g != null) {
      paramlxz.a(7, g);
    }
    if (h != null) {
      paramlxz.a(8, h);
    }
    if (i != null) {
      paramlxz.a(9, i);
    }
    if (j != null) {
      paramlxz.a(10, j);
    }
    if (k != null) {
      paramlxz.a(11, k);
    }
    if (l != null) {
      paramlxz.a(12, l);
    }
    if ((m != null) && (m.length > 0))
    {
      int i1 = 0;
      while (i1 < m.length)
      {
        mbq localmbq = m[i1];
        if (localmbq != null) {
          paramlxz.b(13, localmbq);
        }
        i1 += 1;
      }
    }
    if (n != null) {
      paramlxz.a(14, n);
    }
    if (o != null) {
      paramlxz.b(15, o);
    }
    if (p != null) {
      paramlxz.b(16, p);
    }
    if (q != null) {
      paramlxz.b(17, q);
    }
    if (r != null) {
      paramlxz.b(18, r);
    }
    if (s != null) {
      paramlxz.b(19, s);
    }
    if (t != null) {
      paramlxz.b(20, t);
    }
    if (u != null) {
      paramlxz.b(21, u);
    }
    if (v != null) {
      paramlxz.b(22, v);
    }
    if (w != null) {
      paramlxz.b(23, w);
    }
    if (x != null) {
      paramlxz.b(24, x.intValue());
    }
    if (y != null) {
      paramlxz.a(25, y);
    }
    if (z != null) {
      paramlxz.a(26, z);
    }
    if (A != null) {
      paramlxz.a(27, A.booleanValue());
    }
    if (B != null) {
      paramlxz.a(28, B);
    }
    if (C != null) {
      paramlxz.a(29, C.booleanValue());
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
    if (b != null) {
      i2 = i1 + lxz.d(2, b.longValue());
    }
    i1 = i2;
    if (c != null) {
      i1 = i2 + lxz.b(3, c);
    }
    i2 = i1;
    if (d != null) {
      i2 = i1 + lxz.e(4, d.longValue());
    }
    i1 = i2;
    if (e != null) {
      i1 = i2 + lxz.b(5, e);
    }
    i2 = i1;
    if (f != Integer.MIN_VALUE) {
      i2 = i1 + lxz.e(6, f);
    }
    i1 = i2;
    if (g != null) {
      i1 = i2 + lxz.b(7, g);
    }
    i2 = i1;
    if (h != null) {
      i2 = i1 + lxz.b(8, h);
    }
    i1 = i2;
    if (i != null) {
      i1 = i2 + lxz.b(9, i);
    }
    i2 = i1;
    if (j != null) {
      i2 = i1 + lxz.b(10, j);
    }
    int i3 = i2;
    if (k != null) {
      i3 = i2 + lxz.b(11, k);
    }
    i1 = i3;
    if (l != null) {
      i1 = i3 + lxz.b(12, l);
    }
    i2 = i1;
    if (m != null)
    {
      i2 = i1;
      if (m.length > 0)
      {
        i2 = 0;
        while (i2 < m.length)
        {
          mbq localmbq = m[i2];
          i3 = i1;
          if (localmbq != null) {
            i3 = i1 + lxz.d(13, localmbq);
          }
          i2 += 1;
          i1 = i3;
        }
        i2 = i1;
      }
    }
    i1 = i2;
    if (n != null) {
      i1 = i2 + lxz.b(14, n);
    }
    i2 = i1;
    if (o != null) {
      i2 = i1 + lxz.d(15, o);
    }
    i1 = i2;
    if (p != null) {
      i1 = i2 + lxz.d(16, p);
    }
    i2 = i1;
    if (q != null) {
      i2 = i1 + lxz.d(17, q);
    }
    i1 = i2;
    if (r != null) {
      i1 = i2 + lxz.d(18, r);
    }
    i2 = i1;
    if (s != null) {
      i2 = i1 + lxz.d(19, s);
    }
    i1 = i2;
    if (t != null) {
      i1 = i2 + lxz.d(20, t);
    }
    i2 = i1;
    if (u != null) {
      i2 = i1 + lxz.d(21, u);
    }
    i1 = i2;
    if (v != null) {
      i1 = i2 + lxz.d(22, v);
    }
    i2 = i1;
    if (w != null) {
      i2 = i1 + lxz.d(23, w);
    }
    i1 = i2;
    if (x != null)
    {
      x.intValue();
      i1 = i2 + (lxz.f(24) + 4);
    }
    i2 = i1;
    if (y != null) {
      i2 = i1 + lxz.b(25, y);
    }
    i1 = i2;
    if (z != null) {
      i1 = i2 + lxz.b(26, z);
    }
    i2 = i1;
    if (A != null)
    {
      A.booleanValue();
      i2 = i1 + (lxz.f(27) + 1);
    }
    i1 = i2;
    if (B != null) {
      i1 = i2 + lxz.b(28, B);
    }
    i2 = i1;
    if (C != null)
    {
      C.booleanValue();
      i2 = i1 + (lxz.f(29) + 1);
    }
    return i2;
  }
}

/* Location:
 * Qualified Name:     mca
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */