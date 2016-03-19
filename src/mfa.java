public final class mfa
  extends lyb<mfa>
{
  public Integer a = null;
  public byte[] b = null;
  public byte[] c = null;
  public Long d = null;
  public Long e = null;
  public String f = null;
  public String g = null;
  
  public mfa()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    paramlxz.a(1, a.intValue());
    paramlxz.a(2, b);
    paramlxz.a(3, c);
    if (d != null) {
      paramlxz.b(4, d.longValue());
    }
    if (e != null) {
      paramlxz.b(6, e.longValue());
    }
    if (f != null) {
      paramlxz.a(7, f);
    }
    if (g != null) {
      paramlxz.a(8, g);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b() + lxz.e(1, a.intValue()) + lxz.b(2, b) + lxz.b(3, c);
    int i = j;
    if (d != null) {
      i = j + lxz.e(4, d.longValue());
    }
    j = i;
    if (e != null) {
      j = i + lxz.e(6, e.longValue());
    }
    i = j;
    if (f != null) {
      i = j + lxz.b(7, f);
    }
    j = i;
    if (g != null) {
      j = i + lxz.b(8, g);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     mfa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */