public final class lfy
  extends lyb<lfy>
{
  private static volatile lfy[] e;
  public lga a = null;
  public int[] b = lyo.a;
  public int c = Integer.MIN_VALUE;
  public lqo d = null;
  
  public lfy()
  {
    eD = null;
    eE = -1;
  }
  
  public static lfy[] d()
  {
    if (e == null) {}
    synchronized (lyf.a)
    {
      if (e == null) {
        e = new lfy[0];
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
    if (c != Integer.MIN_VALUE) {
      paramlxz.a(3, c);
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
    if (c != Integer.MIN_VALUE) {
      i = j + lxz.e(3, c);
    }
    j = i;
    if (d != null) {
      j = i + lxz.d(4, d);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     lfy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */