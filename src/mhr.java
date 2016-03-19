public final class mhr
  extends lyb<mhr>
{
  public Integer a = null;
  public Integer b = null;
  public Integer c = null;
  public Integer d = null;
  public Integer e = null;
  public Integer f = null;
  public Integer g = null;
  public Integer h = null;
  public Integer i = null;
  
  public mhr()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a.intValue());
    }
    if (b != null) {
      paramlxz.a(2, b.intValue());
    }
    if (c != null) {
      paramlxz.a(3, c.intValue());
    }
    if (d != null) {
      paramlxz.a(4, d.intValue());
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
      paramlxz.a(8, h.intValue());
    }
    if (i != null) {
      paramlxz.a(9, i.intValue());
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int k = super.b();
    int j = k;
    if (a != null) {
      j = k + lxz.e(1, a.intValue());
    }
    k = j;
    if (b != null) {
      k = j + lxz.e(2, b.intValue());
    }
    j = k;
    if (c != null) {
      j = k + lxz.e(3, c.intValue());
    }
    k = j;
    if (d != null) {
      k = j + lxz.e(4, d.intValue());
    }
    j = k;
    if (e != null) {
      j = k + lxz.e(5, e.intValue());
    }
    k = j;
    if (f != null) {
      k = j + lxz.e(6, f.intValue());
    }
    j = k;
    if (g != null) {
      j = k + lxz.e(7, g.intValue());
    }
    k = j;
    if (h != null) {
      k = j + lxz.e(8, h.intValue());
    }
    j = k;
    if (i != null) {
      j = k + lxz.e(9, i.intValue());
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     mhr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */