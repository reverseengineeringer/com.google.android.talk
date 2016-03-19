public final class jdr
  extends lyb<jdr>
{
  private static volatile jdr[] c;
  public int[] a = lyo.a;
  public String b = null;
  
  public jdr()
  {
    eD = null;
    eE = -1;
  }
  
  public static jdr[] d()
  {
    if (c == null) {}
    synchronized (lyf.a)
    {
      if (c == null) {
        c = new jdr[0];
      }
      return c;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if ((a != null) && (a.length > 0))
    {
      int i = 0;
      while (i < a.length)
      {
        paramlxz.a(1, a[i]);
        i += 1;
      }
    }
    if (b != null) {
      paramlxz.a(2, b);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i = 0;
    int k = super.b();
    int j;
    if ((a != null) && (a.length > 0))
    {
      j = 0;
      while (i < a.length)
      {
        j += lxz.e(a[i]);
        i += 1;
      }
    }
    for (i = k + j + a.length * 1;; i = k)
    {
      j = i;
      if (b != null) {
        j = i + lxz.b(2, b);
      }
      return j;
    }
  }
}

/* Location:
 * Qualified Name:     jdr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */