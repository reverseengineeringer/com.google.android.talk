public final class kdp
  extends lyb<kdp>
{
  public Integer a = null;
  public String b = null;
  public String c = null;
  public Long d = null;
  public Long e = null;
  public Long f = null;
  public String g = null;
  public String h = null;
  public kfl i = null;
  
  public kdp()
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
      paramlxz.a(3, c);
    }
    if (d != null) {
      paramlxz.a(4, d.longValue());
    }
    if (e != null) {
      paramlxz.a(5, e.longValue());
    }
    if (f != null) {
      paramlxz.a(6, f.longValue());
    }
    if (g != null) {
      paramlxz.a(7, g);
    }
    if (h != null) {
      paramlxz.a(8, h);
    }
    if (i != null) {
      paramlxz.b(9, i);
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
      j = k + lxz.b(3, c);
    }
    k = j;
    if (d != null) {
      k = j + lxz.d(4, d.longValue());
    }
    j = k;
    if (e != null) {
      j = k + lxz.d(5, e.longValue());
    }
    k = j;
    if (f != null) {
      k = j + lxz.d(6, f.longValue());
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
      j = k + lxz.d(9, i);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     kdp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */