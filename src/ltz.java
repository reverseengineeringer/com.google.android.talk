public final class ltz
  extends lyb<ltz>
{
  private static volatile ltz[] e;
  public lua a = null;
  public int[] b = lyo.a;
  public Integer c = null;
  public lue d = null;
  
  public ltz()
  {
    eD = null;
    eE = -1;
  }
  
  public static ltz[] d()
  {
    if (e == null) {}
    synchronized (lyf.a)
    {
      if (e == null) {
        e = new ltz[0];
      }
      return e;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.b(1, a);
    }
    if ((b != null) && (b.length > 0))
    {
      int i = 0;
      while (i < b.length)
      {
        paramlxz.a(2, b[i]);
        i += 1;
      }
    }
    if (c != null) {
      paramlxz.a(3, c.intValue());
    }
    if (d != null) {
      paramlxz.b(4, d);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int m = 0;
    int j = super.b();
    int i = j;
    if (a != null) {
      i = j + lxz.d(1, a);
    }
    j = i;
    if (b != null)
    {
      j = i;
      if (b.length > 0)
      {
        int k = 0;
        j = m;
        while (j < b.length)
        {
          k += lxz.e(b[j]);
          j += 1;
        }
        j = i + k + b.length * 1;
      }
    }
    i = j;
    if (c != null) {
      i = j + lxz.e(3, c.intValue());
    }
    j = i;
    if (d != null) {
      j = i + lxz.d(4, d);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     ltz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */