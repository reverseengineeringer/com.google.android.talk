public final class jgf
  extends lyb<jgf>
{
  public jfv a = null;
  public Long b = null;
  public Integer c = null;
  public Integer d = null;
  public String e = null;
  public String f = null;
  
  public jgf()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.b(1, a);
    }
    paramlxz.b(2, b.longValue());
    if (c != null) {
      paramlxz.a(3, c.intValue());
    }
    if (d != null) {
      paramlxz.a(4, d.intValue());
    }
    if (e != null) {
      paramlxz.a(5, e);
    }
    if (f != null) {
      paramlxz.a(6, f);
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
    j = i + lxz.e(2, b.longValue());
    i = j;
    if (c != null) {
      i = j + lxz.e(3, c.intValue());
    }
    j = i;
    if (d != null) {
      j = i + lxz.e(4, d.intValue());
    }
    i = j;
    if (e != null) {
      i = j + lxz.b(5, e);
    }
    j = i;
    if (f != null) {
      j = i + lxz.b(6, f);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     jgf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */