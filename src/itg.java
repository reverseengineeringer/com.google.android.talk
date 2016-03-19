public final class itg
  extends lyb<itg>
{
  public Long a = null;
  public ith b = null;
  public Integer c = null;
  public Integer d = null;
  public Integer e = null;
  public Integer f = null;
  public Integer g = null;
  public String h = null;
  
  public itg()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (b != null) {
      paramlxz.b(1, b);
    }
    if (c != null) {
      paramlxz.a(2, c.intValue());
    }
    if (d != null) {
      paramlxz.a(3, d.intValue());
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
    if (h != null) {
      paramlxz.a(8, h);
    }
    if (a != null) {
      paramlxz.b(9, a.longValue());
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (b != null) {
      i = j + lxz.d(1, b);
    }
    j = i;
    if (c != null) {
      j = i + lxz.e(2, c.intValue());
    }
    i = j;
    if (d != null) {
      i = j + lxz.e(3, d.intValue());
    }
    j = i;
    if (e != null) {
      j = i + lxz.e(5, e.intValue());
    }
    i = j;
    if (f != null) {
      i = j + lxz.e(6, f.intValue());
    }
    j = i;
    if (g != null) {
      j = i + lxz.e(7, g.intValue());
    }
    i = j;
    if (h != null) {
      i = j + lxz.b(8, h);
    }
    j = i;
    if (a != null) {
      j = i + lxz.e(9, a.longValue());
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     itg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */