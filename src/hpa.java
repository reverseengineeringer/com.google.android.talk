public final class hpa
  extends lyi
{
  private static volatile hpa[] F;
  public hoz[] A = hoz.d();
  public boolean B = false;
  public String C = "";
  public boolean D = false;
  public boolean E = false;
  public hpc a = null;
  public hpc b = null;
  public hpc c = null;
  public hpc d = null;
  public hpc e = null;
  public hpc f = null;
  public hpc g = null;
  public hpc h = null;
  public hpc i = null;
  public hpc j = null;
  public hpc k = null;
  public hpc l = null;
  public hpc m = null;
  public hpc n = null;
  public hpc o = null;
  public hpc p = null;
  public String q = "";
  public int r = 0;
  public String s = "";
  public String t = "";
  public String u = "";
  public String v = "";
  public String w = "";
  public String x = "";
  public boolean y = false;
  public hoz[] z = hoz.d();
  
  public hpa()
  {
    eE = -1;
  }
  
  public static hpa[] d()
  {
    if (F == null) {}
    synchronized (lyf.a)
    {
      if (F == null) {
        F = new hpa[0];
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
      paramlxz.b(3, c);
    }
    if (d != null) {
      paramlxz.b(4, d);
    }
    if (e != null) {
      paramlxz.b(5, e);
    }
    if (f != null) {
      paramlxz.b(6, f);
    }
    if (g != null) {
      paramlxz.b(7, g);
    }
    if (h != null) {
      paramlxz.b(8, h);
    }
    paramlxz.a(9, q);
    if (r != 0) {
      paramlxz.a(10, r);
    }
    if (!s.equals("")) {
      paramlxz.a(11, s);
    }
    if (!u.equals("")) {
      paramlxz.a(12, u);
    }
    if (!v.equals("")) {
      paramlxz.a(13, v);
    }
    if (!w.equals("")) {
      paramlxz.a(15, w);
    }
    if (!x.equals("")) {
      paramlxz.a(16, x);
    }
    if (!t.equals("")) {
      paramlxz.a(17, t);
    }
    if (y) {
      paramlxz.a(18, y);
    }
    int i1;
    hoz localhoz;
    if ((z != null) && (z.length > 0))
    {
      i1 = 0;
      while (i1 < z.length)
      {
        localhoz = z[i1];
        if (localhoz != null) {
          paramlxz.b(19, localhoz);
        }
        i1 += 1;
      }
    }
    if ((A != null) && (A.length > 0))
    {
      i1 = i2;
      while (i1 < A.length)
      {
        localhoz = A[i1];
        if (localhoz != null) {
          paramlxz.b(20, localhoz);
        }
        i1 += 1;
      }
    }
    if (i != null) {
      paramlxz.b(21, i);
    }
    if (B) {
      paramlxz.a(22, B);
    }
    if (!C.equals("")) {
      paramlxz.a(23, C);
    }
    if (p != null) {
      paramlxz.b(24, p);
    }
    if (j != null) {
      paramlxz.b(25, j);
    }
    if (D) {
      paramlxz.a(26, D);
    }
    if (k != null) {
      paramlxz.b(27, k);
    }
    if (l != null) {
      paramlxz.b(28, l);
    }
    if (m != null) {
      paramlxz.b(29, m);
    }
    if (n != null) {
      paramlxz.b(30, n);
    }
    if (o != null) {
      paramlxz.b(31, o);
    }
    if (E) {
      paramlxz.a(32, E);
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
      i1 = i2 + lxz.d(3, c);
    }
    i2 = i1;
    if (d != null) {
      i2 = i1 + lxz.d(4, d);
    }
    i1 = i2;
    if (e != null) {
      i1 = i2 + lxz.d(5, e);
    }
    i2 = i1;
    if (f != null) {
      i2 = i1 + lxz.d(6, f);
    }
    i1 = i2;
    if (g != null) {
      i1 = i2 + lxz.d(7, g);
    }
    i2 = i1;
    if (h != null) {
      i2 = i1 + lxz.d(8, h);
    }
    i2 += lxz.b(9, q);
    i1 = i2;
    if (r != 0) {
      i1 = i2 + lxz.e(10, r);
    }
    i2 = i1;
    if (!s.equals("")) {
      i2 = i1 + lxz.b(11, s);
    }
    i1 = i2;
    if (!u.equals("")) {
      i1 = i2 + lxz.b(12, u);
    }
    i2 = i1;
    if (!v.equals("")) {
      i2 = i1 + lxz.b(13, v);
    }
    i1 = i2;
    if (!w.equals("")) {
      i1 = i2 + lxz.b(15, w);
    }
    i2 = i1;
    if (!x.equals("")) {
      i2 = i1 + lxz.b(16, x);
    }
    i1 = i2;
    if (!t.equals("")) {
      i1 = i2 + lxz.b(17, t);
    }
    i2 = i1;
    if (y) {
      i2 = i1 + lxz.d(18);
    }
    i1 = i2;
    hoz localhoz;
    int i3;
    if (z != null)
    {
      i1 = i2;
      if (z.length > 0)
      {
        i1 = i2;
        i2 = 0;
        while (i2 < z.length)
        {
          localhoz = z[i2];
          i3 = i1;
          if (localhoz != null) {
            i3 = i1 + lxz.d(19, localhoz);
          }
          i2 += 1;
          i1 = i3;
        }
      }
    }
    i2 = i1;
    if (A != null)
    {
      i2 = i1;
      if (A.length > 0)
      {
        i3 = i4;
        for (;;)
        {
          i2 = i1;
          if (i3 >= A.length) {
            break;
          }
          localhoz = A[i3];
          i2 = i1;
          if (localhoz != null) {
            i2 = i1 + lxz.d(20, localhoz);
          }
          i3 += 1;
          i1 = i2;
        }
      }
    }
    i1 = i2;
    if (i != null) {
      i1 = i2 + lxz.d(21, i);
    }
    i2 = i1;
    if (B) {
      i2 = i1 + lxz.d(22);
    }
    i1 = i2;
    if (!C.equals("")) {
      i1 = i2 + lxz.b(23, C);
    }
    i2 = i1;
    if (p != null) {
      i2 = i1 + lxz.d(24, p);
    }
    i1 = i2;
    if (j != null) {
      i1 = i2 + lxz.d(25, j);
    }
    i2 = i1;
    if (D) {
      i2 = i1 + lxz.d(26);
    }
    i1 = i2;
    if (k != null) {
      i1 = i2 + lxz.d(27, k);
    }
    i2 = i1;
    if (l != null) {
      i2 = i1 + lxz.d(28, l);
    }
    i1 = i2;
    if (m != null) {
      i1 = i2 + lxz.d(29, m);
    }
    i2 = i1;
    if (n != null) {
      i2 = i1 + lxz.d(30, n);
    }
    i1 = i2;
    if (o != null) {
      i1 = i2 + lxz.d(31, o);
    }
    i2 = i1;
    if (E) {
      i2 = i1 + lxz.d(32);
    }
    return i2;
  }
}

/* Location:
 * Qualified Name:     hpa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */