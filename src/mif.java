public final class mif
  extends lyb<mif>
{
  public Long a = null;
  public Long b = null;
  public Long c = null;
  public Long d = null;
  public Long e = null;
  public Long f = null;
  public Long g = null;
  public Long h = null;
  public String i = null;
  
  public mif()
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
      paramlxz.b(2, b.longValue());
    }
    if (c != null) {
      paramlxz.b(3, c.longValue());
    }
    if (d != null) {
      paramlxz.b(4, d.longValue());
    }
    if (e != null) {
      paramlxz.b(5, e.longValue());
    }
    if (f != null) {
      paramlxz.b(6, f.longValue());
    }
    if (g != null) {
      paramlxz.b(7, g.longValue());
    }
    if (h != null) {
      paramlxz.b(8, h.longValue());
    }
    if (i != null) {
      paramlxz.a(9, i);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int k = super.b();
    int j = k;
    if (a != null) {
      j = k + lxz.e(1, a.longValue());
    }
    k = j;
    if (b != null) {
      k = j + lxz.e(2, b.longValue());
    }
    j = k;
    if (c != null) {
      j = k + lxz.e(3, c.longValue());
    }
    k = j;
    if (d != null) {
      k = j + lxz.e(4, d.longValue());
    }
    j = k;
    if (e != null) {
      j = k + lxz.e(5, e.longValue());
    }
    k = j;
    if (f != null) {
      k = j + lxz.e(6, f.longValue());
    }
    j = k;
    if (g != null) {
      j = k + lxz.e(7, g.longValue());
    }
    k = j;
    if (h != null) {
      k = j + lxz.e(8, h.longValue());
    }
    j = k;
    if (i != null) {
      j = k + lxz.b(9, i);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     mif
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */