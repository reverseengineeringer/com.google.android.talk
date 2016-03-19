public final class lej
  extends lyb<lej>
{
  private static volatile lej[] g;
  public int[] a = lyo.a;
  public lel b = null;
  public lel c = null;
  public lek d = null;
  public double[] e = lyo.d;
  public ldg f = null;
  
  public lej()
  {
    eD = null;
    eE = -1;
  }
  
  public static lej[] d()
  {
    if (g == null) {}
    synchronized (lyf.a)
    {
      if (g == null) {
        g = new lej[0];
      }
      return g;
    }
  }
  
  public void a(lxz paramlxz)
  {
    int j = 0;
    int i;
    if ((a != null) && (a.length > 0))
    {
      i = 0;
      while (i < a.length)
      {
        paramlxz.a(1, a[i]);
        i += 1;
      }
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
    if ((e != null) && (e.length > 0))
    {
      i = j;
      while (i < e.length)
      {
        paramlxz.a(5, e[i]);
        i += 1;
      }
    }
    if (f != null) {
      paramlxz.b(6, f);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i = 0;
    int k = super.b();
    if ((a != null) && (a.length > 0))
    {
      j = 0;
      while (i < a.length)
      {
        j += lxz.e(a[i]);
        i += 1;
      }
    }
    for (int j = k + j + a.length * 1;; j = k)
    {
      i = j;
      if (b != null) {
        i = j + lxz.d(2, b);
      }
      j = i;
      if (c != null) {
        j = i + lxz.d(3, c);
      }
      i = j;
      if (d != null) {
        i = j + lxz.d(4, d);
      }
      j = i;
      if (e != null)
      {
        j = i;
        if (e.length > 0) {
          j = i + e.length * 8 + e.length * 1;
        }
      }
      i = j;
      if (f != null) {
        i = j + lxz.d(6, f);
      }
      return i;
    }
  }
}

/* Location:
 * Qualified Name:     lej
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */