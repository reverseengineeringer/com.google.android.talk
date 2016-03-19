public final class lyu
  extends lyb<lyu>
{
  private static volatile lyu[] i;
  public int[] a = lyo.a;
  public String b = null;
  public String c = null;
  public lyv d = null;
  public maz e = null;
  public String f = null;
  public mar g = null;
  public String h = null;
  
  public lyu()
  {
    eD = null;
    eE = -1;
  }
  
  public static lyu[] d()
  {
    if (i == null) {}
    synchronized (lyf.a)
    {
      if (i == null) {
        i = new lyu[0];
      }
      return i;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if ((a != null) && (a.length > 0))
    {
      int j = 0;
      while (j < a.length)
      {
        paramlxz.a(1, a[j]);
        j += 1;
      }
    }
    if (b != null) {
      paramlxz.a(2, b);
    }
    if (c != null) {
      paramlxz.a(3, c);
    }
    if (d != null) {
      paramlxz.b(4, d);
    }
    if (e != null) {
      paramlxz.b(5, e);
    }
    if (f != null) {
      paramlxz.a(6, f);
    }
    if (g != null) {
      paramlxz.b(7, g);
    }
    if (h != null) {
      paramlxz.a(8, h);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = 0;
    int m = super.b();
    if ((a != null) && (a.length > 0))
    {
      k = 0;
      while (j < a.length)
      {
        k += lxz.e(a[j]);
        j += 1;
      }
    }
    for (int k = m + k + a.length * 1;; k = m)
    {
      j = k;
      if (b != null) {
        j = k + lxz.b(2, b);
      }
      k = j;
      if (c != null) {
        k = j + lxz.b(3, c);
      }
      j = k;
      if (d != null) {
        j = k + lxz.d(4, d);
      }
      k = j;
      if (e != null) {
        k = j + lxz.d(5, e);
      }
      j = k;
      if (f != null) {
        j = k + lxz.b(6, f);
      }
      k = j;
      if (g != null) {
        k = j + lxz.d(7, g);
      }
      j = k;
      if (h != null) {
        j = k + lxz.b(8, h);
      }
      return j;
    }
  }
}

/* Location:
 * Qualified Name:     lyu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */