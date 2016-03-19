public final class jim
  extends lyb<jim>
{
  public String a = null;
  public int b = Integer.MIN_VALUE;
  public int c = Integer.MIN_VALUE;
  public jgy d = null;
  public jhr e = null;
  public jjb f = null;
  public jhn g = null;
  public int h = Integer.MIN_VALUE;
  
  public jim()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a);
    }
    if (b != Integer.MIN_VALUE) {
      paramlxz.a(2, b);
    }
    if (c != Integer.MIN_VALUE) {
      paramlxz.a(3, c);
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
    if (h != Integer.MIN_VALUE) {
      paramlxz.a(8, h);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (a != null) {
      i = j + lxz.b(1, a);
    }
    j = i;
    if (b != Integer.MIN_VALUE) {
      j = i + lxz.e(2, b);
    }
    i = j;
    if (c != Integer.MIN_VALUE) {
      i = j + lxz.e(3, c);
    }
    j = i;
    if (d != null) {
      j = i + lxz.d(4, d);
    }
    i = j;
    if (e != null) {
      i = j + lxz.d(5, e);
    }
    j = i;
    if (f != null) {
      j = i + lxz.d(6, f);
    }
    i = j;
    if (g != null) {
      i = j + lxz.d(7, g);
    }
    j = i;
    if (h != Integer.MIN_VALUE) {
      j = i + lxz.e(8, h);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     jim
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */