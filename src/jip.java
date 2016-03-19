public final class jip
  extends lyb<jip>
{
  private static volatile jip[] g;
  public String a = null;
  public jhi b = null;
  public int c = Integer.MIN_VALUE;
  public jho d = null;
  public jla e = null;
  public jhk f = null;
  
  public jip()
  {
    eD = null;
    eE = -1;
  }
  
  public static jip[] d()
  {
    if (g == null) {}
    synchronized (lyf.a)
    {
      if (g == null) {
        g = new jip[0];
      }
      return g;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a);
    }
    if (b != null) {
      paramlxz.b(2, b);
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
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (a != null) {
      i = j + lxz.b(1, a);
    }
    j = i;
    if (b != null) {
      j = i + lxz.d(2, b);
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
    return j;
  }
}

/* Location:
 * Qualified Name:     jip
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */