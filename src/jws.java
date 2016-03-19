public final class jws
  extends lyb<jws>
{
  public byte[] a = null;
  public byte[] b = null;
  public Integer c = null;
  public Boolean d = null;
  public Long e = null;
  public Long f = null;
  public Integer g = null;
  public Boolean h = null;
  public Long i = null;
  public Long j = null;
  public String k = null;
  public String l = null;
  public String m = null;
  public String n = null;
  public Integer o = null;
  public int p = Integer.MIN_VALUE;
  public int[] q = lyo.a;
  public String r = null;
  
  public jws()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    paramlxz.a(1, a);
    if (b != null) {
      paramlxz.a(2, b);
    }
    paramlxz.c(3, c.intValue());
    if (d != null) {
      paramlxz.a(5, d.booleanValue());
    }
    if (i != null) {
      paramlxz.a(6, i.longValue());
    }
    if (f != null) {
      paramlxz.a(8, f.longValue());
    }
    if (e != null) {
      paramlxz.a(9, e.longValue());
    }
    if (g != null) {
      paramlxz.c(10, g.intValue());
    }
    if (j != null) {
      paramlxz.a(11, j.longValue());
    }
    if (k != null) {
      paramlxz.a(13, k);
    }
    if (l != null) {
      paramlxz.a(14, l);
    }
    if (h != null) {
      paramlxz.a(15, h.booleanValue());
    }
    if (m != null) {
      paramlxz.a(16, m);
    }
    if (n != null) {
      paramlxz.a(17, n);
    }
    if (o != null) {
      paramlxz.c(18, o.intValue());
    }
    if (p != Integer.MIN_VALUE) {
      paramlxz.a(19, p);
    }
    if ((q != null) && (q.length > 0))
    {
      int i1 = 0;
      while (i1 < q.length)
      {
        paramlxz.a(20, q[i1]);
        i1 += 1;
      }
    }
    if (r != null) {
      paramlxz.a(21, r);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i4 = 0;
    int i2 = super.b() + lxz.b(1, a);
    int i1 = i2;
    if (b != null) {
      i1 = i2 + lxz.b(2, b);
    }
    i2 = i1 + lxz.f(3, c.intValue());
    i1 = i2;
    if (d != null)
    {
      d.booleanValue();
      i1 = i2 + (lxz.f(5) + 1);
    }
    i2 = i1;
    if (i != null) {
      i2 = i1 + lxz.d(6, i.longValue());
    }
    i1 = i2;
    if (f != null) {
      i1 = i2 + lxz.d(8, f.longValue());
    }
    i2 = i1;
    if (e != null) {
      i2 = i1 + lxz.d(9, e.longValue());
    }
    i1 = i2;
    if (g != null) {
      i1 = i2 + lxz.f(10, g.intValue());
    }
    i2 = i1;
    if (j != null) {
      i2 = i1 + lxz.d(11, j.longValue());
    }
    i1 = i2;
    if (k != null) {
      i1 = i2 + lxz.b(13, k);
    }
    i2 = i1;
    if (l != null) {
      i2 = i1 + lxz.b(14, l);
    }
    i1 = i2;
    if (h != null)
    {
      h.booleanValue();
      i1 = i2 + (lxz.f(15) + 1);
    }
    i2 = i1;
    if (m != null) {
      i2 = i1 + lxz.b(16, m);
    }
    i1 = i2;
    if (n != null) {
      i1 = i2 + lxz.b(17, n);
    }
    i2 = i1;
    if (o != null) {
      i2 = i1 + lxz.f(18, o.intValue());
    }
    i1 = i2;
    if (p != Integer.MIN_VALUE) {
      i1 = i2 + lxz.e(19, p);
    }
    i2 = i1;
    if (q != null)
    {
      i2 = i1;
      if (q.length > 0)
      {
        int i3 = 0;
        i2 = i4;
        while (i2 < q.length)
        {
          i3 += lxz.e(q[i2]);
          i2 += 1;
        }
        i2 = i1 + i3 + q.length * 2;
      }
    }
    i1 = i2;
    if (r != null) {
      i1 = i2 + lxz.b(21, r);
    }
    return i1;
  }
}

/* Location:
 * Qualified Name:     jws
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */