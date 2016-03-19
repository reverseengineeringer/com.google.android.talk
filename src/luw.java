public final class luw
  extends lyb<luw>
{
  private static volatile luw[] H;
  public Float A = null;
  public Float B = null;
  public Float C = null;
  public byte[] D = null;
  public lvc[] E = lvc.d();
  public byte[] F = null;
  public lva G = null;
  public lux a = null;
  public lux b = null;
  public lvb c = null;
  public luz[] d = luz.d();
  public luy[] e = luy.d();
  public Float f = null;
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
  
  public luw()
  {
    eD = null;
    eE = -1;
  }
  
  public static luw[] d()
  {
    if (H == null) {}
    synchronized (lyf.a)
    {
      if (H == null) {
        H = new luw[0];
      }
      return H;
    }
  }
  
  public void a(lxz paramlxz)
  {
    int i2 = 0;
    if (a != null) {
      paramlxz.b(1, a);
    }
    int i1;
    Object localObject;
    if ((d != null) && (d.length > 0))
    {
      i1 = 0;
      while (i1 < d.length)
      {
        localObject = d[i1];
        if (localObject != null) {
          paramlxz.b(2, (lyi)localObject);
        }
        i1 += 1;
      }
    }
    if (f != null) {
      paramlxz.a(3, f.floatValue());
    }
    if (g != null) {
      paramlxz.a(4, g.floatValue());
    }
    if (h != null) {
      paramlxz.a(5, h.floatValue());
    }
    if (j != null) {
      paramlxz.a(6, j.floatValue());
    }
    if (k != null) {
      paramlxz.a(7, k.floatValue());
    }
    if (D != null) {
      paramlxz.a(8, D);
    }
    if (i != null) {
      paramlxz.a(9, i.floatValue());
    }
    if (l != null) {
      paramlxz.a(10, l.floatValue());
    }
    if (m != null) {
      paramlxz.a(11, m.floatValue());
    }
    if (n != null) {
      paramlxz.a(12, n.floatValue());
    }
    if (o != null) {
      paramlxz.a(13, o.floatValue());
    }
    if (p != null) {
      paramlxz.a(14, p.floatValue());
    }
    if (q != null) {
      paramlxz.a(15, q.floatValue());
    }
    if (r != null) {
      paramlxz.a(16, r.floatValue());
    }
    if (s != null) {
      paramlxz.a(17, s.floatValue());
    }
    if (t != null) {
      paramlxz.a(18, t.floatValue());
    }
    if (u != null) {
      paramlxz.a(19, u.floatValue());
    }
    if (F != null) {
      paramlxz.a(20, F);
    }
    if ((e != null) && (e.length > 0))
    {
      i1 = 0;
      while (i1 < e.length)
      {
        localObject = e[i1];
        if (localObject != null) {
          paramlxz.b(21, (lyi)localObject);
        }
        i1 += 1;
      }
    }
    if (b != null) {
      paramlxz.b(22, b);
    }
    if ((E != null) && (E.length > 0))
    {
      i1 = i2;
      while (i1 < E.length)
      {
        localObject = E[i1];
        if (localObject != null) {
          paramlxz.b(23, (lyi)localObject);
        }
        i1 += 1;
      }
    }
    if (C != null) {
      paramlxz.a(24, C.floatValue());
    }
    if (c != null) {
      paramlxz.b(25, c);
    }
    if (G != null) {
      paramlxz.b(26, G);
    }
    if (v != null) {
      paramlxz.a(27, v.floatValue());
    }
    if (w != null) {
      paramlxz.a(28, w.floatValue());
    }
    if (x != null) {
      paramlxz.a(29, x.floatValue());
    }
    if (y != null) {
      paramlxz.a(30, y.floatValue());
    }
    if (z != null) {
      paramlxz.a(31, z.floatValue());
    }
    if (A != null) {
      paramlxz.a(33, A.floatValue());
    }
    if (B != null) {
      paramlxz.a(34, B.floatValue());
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
    Object localObject;
    if (d != null)
    {
      i2 = i1;
      if (d.length > 0)
      {
        i2 = 0;
        while (i2 < d.length)
        {
          localObject = d[i2];
          i3 = i1;
          if (localObject != null) {
            i3 = i1 + lxz.d(2, (lyi)localObject);
          }
          i2 += 1;
          i1 = i3;
        }
        i2 = i1;
      }
    }
    i1 = i2;
    if (f != null)
    {
      f.floatValue();
      i1 = i2 + (lxz.f(3) + 4);
    }
    i2 = i1;
    if (g != null)
    {
      g.floatValue();
      i2 = i1 + (lxz.f(4) + 4);
    }
    i1 = i2;
    if (h != null)
    {
      h.floatValue();
      i1 = i2 + (lxz.f(5) + 4);
    }
    i2 = i1;
    if (j != null)
    {
      j.floatValue();
      i2 = i1 + (lxz.f(6) + 4);
    }
    i1 = i2;
    if (k != null)
    {
      k.floatValue();
      i1 = i2 + (lxz.f(7) + 4);
    }
    i2 = i1;
    if (D != null) {
      i2 = i1 + lxz.b(8, D);
    }
    i1 = i2;
    if (i != null)
    {
      i.floatValue();
      i1 = i2 + (lxz.f(9) + 4);
    }
    i2 = i1;
    if (l != null)
    {
      l.floatValue();
      i2 = i1 + (lxz.f(10) + 4);
    }
    i1 = i2;
    if (m != null)
    {
      m.floatValue();
      i1 = i2 + (lxz.f(11) + 4);
    }
    i2 = i1;
    if (n != null)
    {
      n.floatValue();
      i2 = i1 + (lxz.f(12) + 4);
    }
    i1 = i2;
    if (o != null)
    {
      o.floatValue();
      i1 = i2 + (lxz.f(13) + 4);
    }
    i2 = i1;
    if (p != null)
    {
      p.floatValue();
      i2 = i1 + (lxz.f(14) + 4);
    }
    i1 = i2;
    if (q != null)
    {
      q.floatValue();
      i1 = i2 + (lxz.f(15) + 4);
    }
    i2 = i1;
    if (r != null)
    {
      r.floatValue();
      i2 = i1 + (lxz.f(16) + 4);
    }
    i1 = i2;
    if (s != null)
    {
      s.floatValue();
      i1 = i2 + (lxz.f(17) + 4);
    }
    i2 = i1;
    if (t != null)
    {
      t.floatValue();
      i2 = i1 + (lxz.f(18) + 4);
    }
    int i3 = i2;
    if (u != null)
    {
      u.floatValue();
      i3 = i2 + (lxz.f(19) + 4);
    }
    i1 = i3;
    if (F != null) {
      i1 = i3 + lxz.b(20, F);
    }
    i2 = i1;
    if (e != null)
    {
      i2 = i1;
      if (e.length > 0)
      {
        i2 = 0;
        while (i2 < e.length)
        {
          localObject = e[i2];
          i3 = i1;
          if (localObject != null) {
            i3 = i1 + lxz.d(21, (lyi)localObject);
          }
          i2 += 1;
          i1 = i3;
        }
        i2 = i1;
      }
    }
    i1 = i2;
    if (b != null) {
      i1 = i2 + lxz.d(22, b);
    }
    i2 = i1;
    if (E != null)
    {
      i2 = i1;
      if (E.length > 0)
      {
        i3 = i4;
        for (;;)
        {
          i2 = i1;
          if (i3 >= E.length) {
            break;
          }
          localObject = E[i3];
          i2 = i1;
          if (localObject != null) {
            i2 = i1 + lxz.d(23, (lyi)localObject);
          }
          i3 += 1;
          i1 = i2;
        }
      }
    }
    i1 = i2;
    if (C != null)
    {
      C.floatValue();
      i1 = i2 + (lxz.f(24) + 4);
    }
    i2 = i1;
    if (c != null) {
      i2 = i1 + lxz.d(25, c);
    }
    i1 = i2;
    if (G != null) {
      i1 = i2 + lxz.d(26, G);
    }
    i2 = i1;
    if (v != null)
    {
      v.floatValue();
      i2 = i1 + (lxz.f(27) + 4);
    }
    i1 = i2;
    if (w != null)
    {
      w.floatValue();
      i1 = i2 + (lxz.f(28) + 4);
    }
    i2 = i1;
    if (x != null)
    {
      x.floatValue();
      i2 = i1 + (lxz.f(29) + 4);
    }
    i1 = i2;
    if (y != null)
    {
      y.floatValue();
      i1 = i2 + (lxz.f(30) + 4);
    }
    i2 = i1;
    if (z != null)
    {
      z.floatValue();
      i2 = i1 + (lxz.f(31) + 4);
    }
    i1 = i2;
    if (A != null)
    {
      A.floatValue();
      i1 = i2 + (lxz.f(33) + 4);
    }
    i2 = i1;
    if (B != null)
    {
      B.floatValue();
      i2 = i1 + (lxz.f(34) + 4);
    }
    return i2;
  }
}

/* Location:
 * Qualified Name:     luw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */