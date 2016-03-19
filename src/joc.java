public final class joc
  extends lyb<joc>
{
  private static volatile joc[] h;
  public jqn a = null;
  public String b = null;
  public int c = Integer.MIN_VALUE;
  public jos d = null;
  public jlx e = null;
  public jpe f = null;
  public jmj g = null;
  
  public joc()
  {
    eD = null;
    eE = -1;
  }
  
  public static joc[] d()
  {
    if (h == null) {}
    synchronized (lyf.a)
    {
      if (h == null) {
        h = new joc[0];
      }
      return h;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.b(1, a);
    }
    if (b != null) {
      paramlxz.a(2, b);
    }
    if (c != Integer.MIN_VALUE) {
      paramlxz.a(3, c);
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
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (a != null) {
      i = j + lxz.d(1, a);
    }
    j = i;
    if (b != null) {
      j = i + lxz.b(2, b);
    }
    i = j;
    if (c != Integer.MIN_VALUE) {
      i = j + lxz.e(3, c);
    }
    j = i;
    if (d != null) {
      j = i + lxz.d(4, d);
    }
    i = j;
    if (e != null) {
      i = j + lxz.d(5, e);
    }
    j = i;
    if (f != null) {
      j = i + lxz.d(6, f);
    }
    i = j;
    if (g != null) {
      i = j + lxz.d(7, g);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     joc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */