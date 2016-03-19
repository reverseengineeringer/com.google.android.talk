public final class lgf
  extends lyb<lgf>
{
  private static volatile lgf[] f;
  public int a = Integer.MIN_VALUE;
  public lfu b = null;
  public String c = null;
  public String d = null;
  public lfu e = null;
  
  public lgf()
  {
    eD = null;
    eE = -1;
  }
  
  public static lgf[] d()
  {
    if (f == null) {}
    synchronized (lyf.a)
    {
      if (f == null) {
        f = new lgf[0];
      }
      return f;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (a != Integer.MIN_VALUE) {
      paramlxz.a(1, a);
    }
    if (b != null) {
      paramlxz.b(2, b);
    }
    if (c != null) {
      paramlxz.a(3, c);
    }
    if (d != null) {
      paramlxz.a(4, d);
    }
    if (e != null) {
      paramlxz.b(5, e);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (a != Integer.MIN_VALUE) {
      i = j + lxz.e(1, a);
    }
    j = i;
    if (b != null) {
      j = i + lxz.d(2, b);
    }
    i = j;
    if (c != null) {
      i = j + lxz.b(3, c);
    }
    j = i;
    if (d != null) {
      j = i + lxz.b(4, d);
    }
    i = j;
    if (e != null) {
      i = j + lxz.d(5, e);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     lgf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */