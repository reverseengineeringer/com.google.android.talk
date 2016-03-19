public final class kkp
  extends lyb<kkp>
{
  public Long a = null;
  public String b = null;
  public Long c = null;
  public Long d = null;
  public Integer e = null;
  public Integer f = null;
  public Integer g = null;
  
  public kkp()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.b(1, a.longValue());
    }
    if (b != null) {
      paramlxz.a(2, b);
    }
    if (c != null) {
      paramlxz.b(3, c.longValue());
    }
    if (d != null) {
      paramlxz.b(4, d.longValue());
    }
    if (e != null) {
      paramlxz.a(5, e.intValue());
    }
    if (f != null) {
      paramlxz.a(6, f.intValue());
    }
    if (g != null) {
      paramlxz.a(7, g.intValue());
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (a != null) {
      i = j + lxz.e(1, a.longValue());
    }
    j = i;
    if (b != null) {
      j = i + lxz.b(2, b);
    }
    i = j;
    if (c != null) {
      i = j + lxz.e(3, c.longValue());
    }
    j = i;
    if (d != null) {
      j = i + lxz.e(4, d.longValue());
    }
    i = j;
    if (e != null) {
      i = j + lxz.e(5, e.intValue());
    }
    j = i;
    if (f != null) {
      j = i + lxz.e(6, f.intValue());
    }
    i = j;
    if (g != null) {
      i = j + lxz.e(7, g.intValue());
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     kkp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */