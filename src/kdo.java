public final class kdo
  extends lyb<kdo>
{
  public jxm a = null;
  public jxj b = null;
  public jxk c = null;
  public String d = null;
  public Boolean e = null;
  public Integer f = null;
  public mdx g = null;
  public String h = null;
  public jxc i = null;
  
  public kdo()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.b(1, a);
    }
    if (b != null) {
      paramlxz.b(2, b);
    }
    if (c != null) {
      paramlxz.b(3, c);
    }
    if (d != null) {
      paramlxz.a(4, d);
    }
    if (e != null) {
      paramlxz.a(5, e.booleanValue());
    }
    if (f != null) {
      paramlxz.c(6, f.intValue());
    }
    if (g != null) {
      paramlxz.b(7, g);
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
      j = k + lxz.d(1, a);
    }
    k = j;
    if (b != null) {
      k = j + lxz.d(2, b);
    }
    j = k;
    if (c != null) {
      j = k + lxz.d(3, c);
    }
    k = j;
    if (d != null) {
      k = j + lxz.b(4, d);
    }
    j = k;
    if (e != null)
    {
      e.booleanValue();
      j = k + (lxz.f(5) + 1);
    }
    k = j;
    if (f != null) {
      k = j + lxz.f(6, f.intValue());
    }
    j = k;
    if (g != null) {
      j = k + lxz.d(7, g);
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
 * Qualified Name:     kdo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */