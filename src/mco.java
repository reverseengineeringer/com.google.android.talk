public final class mco
  extends lyb<mco>
{
  public mcg a = null;
  public lui b = null;
  public lfo c = null;
  public lck d = null;
  public Integer e = null;
  public int f = Integer.MIN_VALUE;
  public mdq g = null;
  public Float h = null;
  public Boolean i = null;
  
  public mco()
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
      paramlxz.b(4, d);
    }
    if (e != null) {
      paramlxz.a(5, e.intValue());
    }
    if (f != Integer.MIN_VALUE) {
      paramlxz.a(6, f);
    }
    if (g != null) {
      paramlxz.b(7, g);
    }
    if (h != null) {
      paramlxz.a(10, h.floatValue());
    }
    if (i != null) {
      paramlxz.a(11, i.booleanValue());
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
      k = j + lxz.d(4, d);
    }
    j = k;
    if (e != null) {
      j = k + lxz.e(5, e.intValue());
    }
    k = j;
    if (f != Integer.MIN_VALUE) {
      k = j + lxz.e(6, f);
    }
    j = k;
    if (g != null) {
      j = k + lxz.d(7, g);
    }
    k = j;
    if (h != null)
    {
      h.floatValue();
      k = j + (lxz.f(10) + 4);
    }
    j = k;
    if (i != null)
    {
      i.booleanValue();
      j = k + (lxz.f(11) + 1);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     mco
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */