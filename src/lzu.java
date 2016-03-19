public final class lzu
  extends lyb<lzu>
{
  public static final lyc<lyt, lzu> a = lyc.a(lzu.class, 217756658L);
  public static final lzu[] b = new lzu[0];
  public String c = null;
  public String d = null;
  public String e = null;
  public String f = null;
  public String g = null;
  public String h = null;
  public lyt i = null;
  
  public lzu()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (c != null) {
      paramlxz.a(1, c);
    }
    if (d != null) {
      paramlxz.a(2, d);
    }
    if (e != null) {
      paramlxz.a(3, e);
    }
    if (f != null) {
      paramlxz.a(4, f);
    }
    if (g != null) {
      paramlxz.a(5, g);
    }
    if (h != null) {
      paramlxz.a(6, h);
    }
    if (i != null) {
      paramlxz.b(7, i);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int k = super.b();
    int j = k;
    if (c != null) {
      j = k + lxz.b(1, c);
    }
    k = j;
    if (d != null) {
      k = j + lxz.b(2, d);
    }
    j = k;
    if (e != null) {
      j = k + lxz.b(3, e);
    }
    k = j;
    if (f != null) {
      k = j + lxz.b(4, f);
    }
    j = k;
    if (g != null) {
      j = k + lxz.b(5, g);
    }
    k = j;
    if (h != null) {
      k = j + lxz.b(6, h);
    }
    j = k;
    if (i != null) {
      j = k + lxz.d(7, i);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     lzu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */