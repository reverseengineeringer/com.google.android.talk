public final class lby
  extends lyb<lby>
{
  private static volatile lby[] h;
  public String a = null;
  public String b = null;
  public int[] c = lyo.a;
  public String d = null;
  public String e = null;
  public lbv f = null;
  public msu g = null;
  
  public lby()
  {
    eD = null;
    eE = -1;
  }
  
  public static lby[] d()
  {
    if (h == null) {}
    synchronized (lyf.a)
    {
      if (h == null) {
        h = new lby[0];
      }
      return h;
    }
  }
  
  public void a(lxz paramlxz)
  {
    paramlxz.a(1, a);
    if (b != null) {
      paramlxz.a(2, b);
    }
    if ((c != null) && (c.length > 0))
    {
      int i = 0;
      while (i < c.length)
      {
        paramlxz.a(3, c[i]);
        i += 1;
      }
    }
    if (d != null) {
      paramlxz.a(5, d);
    }
    if (e != null) {
      paramlxz.a(6, e);
    }
    if (g != null) {
      paramlxz.b(15, g);
    }
    if (f != null) {
      paramlxz.b(500, f);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int m = 0;
    int j = super.b() + lxz.b(1, a);
    int i = j;
    if (b != null) {
      i = j + lxz.b(2, b);
    }
    j = i;
    if (c != null)
    {
      j = i;
      if (c.length > 0)
      {
        int k = 0;
        j = m;
        while (j < c.length)
        {
          k += lxz.e(c[j]);
          j += 1;
        }
        j = i + k + c.length * 1;
      }
    }
    i = j;
    if (d != null) {
      i = j + lxz.b(5, d);
    }
    j = i;
    if (e != null) {
      j = i + lxz.b(6, e);
    }
    i = j;
    if (g != null) {
      i = j + lxz.d(15, g);
    }
    j = i;
    if (f != null) {
      j = i + lxz.d(500, f);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     lby
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */