public final class mrr
  extends lyb<mrr>
{
  public mrj a = null;
  public lum b = null;
  public lfq c = null;
  public lcm d = null;
  public Integer e = null;
  public Integer f = null;
  public mst g = null;
  public Float h = null;
  public Boolean i = null;
  
  public mrr()
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
    if (f != null) {
      paramlxz.a(6, f.intValue());
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
    if (f != null) {
      k = j + lxz.e(6, f.intValue());
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
 * Qualified Name:     mrr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */