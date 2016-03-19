public final class jpg
  extends lyb<jpg>
{
  public static final lyc<msu, jpg> a = lyc.a(jpg.class, 158821898L);
  private static final jpg[] f = new jpg[0];
  public Integer b = null;
  public String c = null;
  public jpf d = null;
  public Integer e = null;
  
  public jpg()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (b != null) {
      paramlxz.a(1, b.intValue());
    }
    if (c != null) {
      paramlxz.a(2, c);
    }
    if (d != null) {
      paramlxz.b(3, d);
    }
    if (e != null) {
      paramlxz.a(4, e.intValue());
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (b != null) {
      i = j + lxz.e(1, b.intValue());
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
    if (e != null) {
      j = i + lxz.e(4, e.intValue());
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     jpg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */