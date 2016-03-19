public final class lop
  extends lyb<lop>
{
  public Integer a = null;
  public String b = null;
  public Long c = null;
  public String d = null;
  public String e = null;
  public Long f = null;
  public String g = null;
  public String h = null;
  public String i = null;
  
  public lop()
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
      paramlxz.a(2, b);
    }
    if (c != null) {
      paramlxz.b(3, c.longValue());
    }
    if (e != null) {
      paramlxz.a(4, e);
    }
    if (f != null) {
      paramlxz.b(5, f.longValue());
    }
    if (d != null) {
      paramlxz.a(6, d);
    }
    if (g != null) {
      paramlxz.a(7, g);
    }
    if (h != null) {
      paramlxz.a(8, h);
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
      j = k + lxz.e(1, a.intValue());
    }
    k = j;
    if (b != null) {
      k = j + lxz.b(2, b);
    }
    j = k;
    if (c != null) {
      j = k + lxz.e(3, c.longValue());
    }
    k = j;
    if (e != null) {
      k = j + lxz.b(4, e);
    }
    j = k;
    if (f != null) {
      j = k + lxz.e(5, f.longValue());
    }
    k = j;
    if (d != null) {
      k = j + lxz.b(6, d);
    }
    j = k;
    if (g != null) {
      j = k + lxz.b(7, g);
    }
    k = j;
    if (h != null) {
      k = j + lxz.b(8, h);
    }
    j = k;
    if (i != null) {
      j = k + lxz.b(9, i);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     lop
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */