public final class klj
  extends lyb<klj>
{
  public Integer a = null;
  public String b = null;
  public klk c = null;
  public klc d = null;
  public kle e = null;
  public kld f = null;
  public kln g = null;
  public klf h = null;
  public klo i = null;
  
  public klj()
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
      paramlxz.b(3, c);
    }
    if (d != null) {
      paramlxz.b(4, d);
    }
    if (e != null) {
      paramlxz.b(5, e);
    }
    if (f != null) {
      paramlxz.b(6, f);
    }
    if (g != null) {
      paramlxz.b(7, g);
    }
    if (h != null) {
      paramlxz.b(8, h);
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
      j = k + lxz.d(3, c);
    }
    k = j;
    if (d != null) {
      k = j + lxz.d(4, d);
    }
    j = k;
    if (e != null) {
      j = k + lxz.d(5, e);
    }
    k = j;
    if (f != null) {
      k = j + lxz.d(6, f);
    }
    j = k;
    if (g != null) {
      j = k + lxz.d(7, g);
    }
    k = j;
    if (h != null) {
      k = j + lxz.d(8, h);
    }
    j = k;
    if (i != null) {
      j = k + lxz.d(9, i);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     klj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */