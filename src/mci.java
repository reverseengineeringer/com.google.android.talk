public final class mci
  extends lyb<mci>
{
  private static volatile mci[] F;
  public Float A = null;
  public Float B = null;
  public Float C = null;
  public Float D = null;
  public byte[] E = null;
  public mcj a = null;
  public mcj b = null;
  public Integer c = null;
  public Integer d = null;
  public mcl[] e = mcl.d();
  public mck[] f = mck.d();
  public Float g = null;
  public Float h = null;
  public Float i = null;
  public Float j = null;
  public Float k = null;
  public Float l = null;
  public Float m = null;
  public Float n = null;
  public Float o = null;
  public Float p = null;
  public Float q = null;
  public Float r = null;
  public Float s = null;
  public Float t = null;
  public Float u = null;
  public Float v = null;
  public Float w = null;
  public Float x = null;
  public Float y = null;
  public Float z = null;
  
  public mci()
  {
    eD = null;
    eE = -1;
  }
  
  public static mci[] d()
  {
    if (F == null) {}
    synchronized (lyf.a)
    {
      if (F == null) {
        F = new mci[0];
      }
      return F;
    }
  }
  
  public void a(lxz paramlxz)
  {
    int i2 = 0;
    if (a != null) {
      paramlxz.b(1, a);
    }
    if (b != null) {
      paramlxz.b(2, b);
    }
    if (c != null) {
      paramlxz.a(3, c.intValue());
    }
    if (d != null) {
      paramlxz.a(4, d.intValue());
    }
    int i1;
    Object localObject;
    if ((e != null) && (e.length > 0))
    {
      i1 = 0;
      while (i1 < e.length)
      {
        localObject = e[i1];
        if (localObject != null) {
          paramlxz.b(5, (lyi)localObject);
        }
        i1 += 1;
      }
    }
    if ((f != null) && (f.length > 0))
    {
      i1 = i2;
      while (i1 < f.length)
      {
        localObject = f[i1];
        if (localObject != null) {
          paramlxz.b(6, (lyi)localObject);
        }
        i1 += 1;
      }
    }
    if (g != null) {
      paramlxz.a(7, g.floatValue());
    }
    if (h != null) {
      paramlxz.a(8, h.floatValue());
    }
    if (i != null) {
      paramlxz.a(9, i.floatValue());
    }
    if (j != null) {
      paramlxz.a(10, j.floatValue());
    }
    if (k != null) {
      paramlxz.a(11, k.floatValue());
    }
    if (l != null) {
      paramlxz.a(12, l.floatValue());
    }
    if (m != null) {
      paramlxz.a(13, m.floatValue());
    }
    if (n != null) {
      paramlxz.a(14, n.floatValue());
    }
    if (o != null) {
      paramlxz.a(15, o.floatValue());
    }
    if (p != null) {
      paramlxz.a(16, p.floatValue());
    }
    if (q != null) {
      paramlxz.a(17, q.floatValue());
    }
    if (r != null) {
      paramlxz.a(18, r.floatValue());
    }
    if (s != null) {
      paramlxz.a(19, s.floatValue());
    }
    if (t != null) {
      paramlxz.a(20, t.floatValue());
    }
    if (u != null) {
      paramlxz.a(21, u.floatValue());
    }
    if (v != null) {
      paramlxz.a(22, v.floatValue());
    }
    if (D != null) {
      paramlxz.a(23, D.floatValue());
    }
    if (w != null) {
      paramlxz.a(24, w.floatValue());
    }
    if (x != null) {
      paramlxz.a(25, x.floatValue());
    }
    if (y != null) {
      paramlxz.a(26, y.floatValue());
    }
    if (z != null) {
      paramlxz.a(27, z.floatValue());
    }
    if (A != null) {
      paramlxz.a(28, A.floatValue());
    }
    if (B != null) {
      paramlxz.a(29, B.floatValue());
    }
    if (C != null) {
      paramlxz.a(30, C.floatValue());
    }
    if (E != null) {
      paramlxz.a(31, E);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i4 = 0;
    int i2 = super.b();
    int i1 = i2;
    if (a != null) {
      i1 = i2 + lxz.d(1, a);
    }
    i2 = i1;
    if (b != null) {
      i2 = i1 + lxz.d(2, b);
    }
    i1 = i2;
    if (c != null) {
      i1 = i2 + lxz.e(3, c.intValue());
    }
    i2 = i1;
    if (d != null) {
      i2 = i1 + lxz.e(4, d.intValue());
    }
    i1 = i2;
    Object localObject;
    int i3;
    if (e != null)
    {
      i1 = i2;
      if (e.length > 0)
      {
        i1 = i2;
        i2 = 0;
        while (i2 < e.length)
        {
          localObject = e[i2];
          i3 = i1;
          if (localObject != null) {
            i3 = i1 + lxz.d(5, (lyi)localObject);
          }
          i2 += 1;
          i1 = i3;
        }
      }
    }
    i2 = i1;
    if (f != null)
    {
      i2 = i1;
      if (f.length > 0)
      {
        i3 = i4;
        for (;;)
        {
          i2 = i1;
          if (i3 >= f.length) {
            break;
          }
          localObject = f[i3];
          i2 = i1;
          if (localObject != null) {
            i2 = i1 + lxz.d(6, (lyi)localObject);
          }
          i3 += 1;
          i1 = i2;
        }
      }
    }
    i1 = i2;
    if (g != null)
    {
      g.floatValue();
      i1 = i2 + (lxz.f(7) + 4);
    }
    i2 = i1;
    if (h != null)
    {
      h.floatValue();
      i2 = i1 + (lxz.f(8) + 4);
    }
    i1 = i2;
    if (i != null)
    {
      i.floatValue();
      i1 = i2 + (lxz.f(9) + 4);
    }
    i2 = i1;
    if (j != null)
    {
      j.floatValue();
      i2 = i1 + (lxz.f(10) + 4);
    }
    i1 = i2;
    if (k != null)
    {
      k.floatValue();
      i1 = i2 + (lxz.f(11) + 4);
    }
    i2 = i1;
    if (l != null)
    {
      l.floatValue();
      i2 = i1 + (lxz.f(12) + 4);
    }
    i1 = i2;
    if (m != null)
    {
      m.floatValue();
      i1 = i2 + (lxz.f(13) + 4);
    }
    i2 = i1;
    if (n != null)
    {
      n.floatValue();
      i2 = i1 + (lxz.f(14) + 4);
    }
    i1 = i2;
    if (o != null)
    {
      o.floatValue();
      i1 = i2 + (lxz.f(15) + 4);
    }
    i2 = i1;
    if (p != null)
    {
      p.floatValue();
      i2 = i1 + (lxz.f(16) + 4);
    }
    i1 = i2;
    if (q != null)
    {
      q.floatValue();
      i1 = i2 + (lxz.f(17) + 4);
    }
    i2 = i1;
    if (r != null)
    {
      r.floatValue();
      i2 = i1 + (lxz.f(18) + 4);
    }
    i1 = i2;
    if (s != null)
    {
      s.floatValue();
      i1 = i2 + (lxz.f(19) + 4);
    }
    i2 = i1;
    if (t != null)
    {
      t.floatValue();
      i2 = i1 + (lxz.f(20) + 4);
    }
    i1 = i2;
    if (u != null)
    {
      u.floatValue();
      i1 = i2 + (lxz.f(21) + 4);
    }
    i2 = i1;
    if (v != null)
    {
      v.floatValue();
      i2 = i1 + (lxz.f(22) + 4);
    }
    i1 = i2;
    if (D != null)
    {
      D.floatValue();
      i1 = i2 + (lxz.f(23) + 4);
    }
    i2 = i1;
    if (w != null)
    {
      w.floatValue();
      i2 = i1 + (lxz.f(24) + 4);
    }
    i1 = i2;
    if (x != null)
    {
      x.floatValue();
      i1 = i2 + (lxz.f(25) + 4);
    }
    i2 = i1;
    if (y != null)
    {
      y.floatValue();
      i2 = i1 + (lxz.f(26) + 4);
    }
    i1 = i2;
    if (z != null)
    {
      z.floatValue();
      i1 = i2 + (lxz.f(27) + 4);
    }
    i2 = i1;
    if (A != null)
    {
      A.floatValue();
      i2 = i1 + (lxz.f(28) + 4);
    }
    i1 = i2;
    if (B != null)
    {
      B.floatValue();
      i1 = i2 + (lxz.f(29) + 4);
    }
    i2 = i1;
    if (C != null)
    {
      C.floatValue();
      i2 = i1 + (lxz.f(30) + 4);
    }
    i1 = i2;
    if (E != null) {
      i1 = i2 + lxz.b(31, E);
    }
    return i1;
  }
}

/* Location:
 * Qualified Name:     mci
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */