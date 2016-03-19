public final class jpa
  extends lyb<jpa>
{
  public static final lyc<Object, jpa> a = lyc.a(jpa.class, 158821898L);
  private static final jpa[] f = new jpa[0];
  public int b = Integer.MIN_VALUE;
  public String c = null;
  public jmo d = null;
  public int e = Integer.MIN_VALUE;
  
  public jpa()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (b != Integer.MIN_VALUE) {
      paramlxz.a(1, b);
    }
    if (c != null) {
      paramlxz.a(2, c);
    }
    if (d != null) {
      paramlxz.b(3, d);
    }
    if (e != Integer.MIN_VALUE) {
      paramlxz.a(4, e);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (b != Integer.MIN_VALUE) {
      i = j + lxz.e(1, b);
    }
    j = i;
    if (c != null) {
      j = i + lxz.b(2, c);
    }
    i = j;
    if (d != null) {
      i = j + lxz.d(3, d);
    }
    j = i;
    if (e != Integer.MIN_VALUE) {
      j = i + lxz.e(4, e);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     jpa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */