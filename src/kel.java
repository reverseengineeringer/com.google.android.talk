public final class kel
  extends lyb<kel>
{
  public jxw a = null;
  public Integer b = null;
  public Integer c = null;
  public Boolean d = null;
  public kdo requestHeader = null;
  
  public kel()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (requestHeader != null) {
      paramlxz.b(1, requestHeader);
    }
    if (a != null) {
      paramlxz.b(2, a);
    }
    if (b != null) {
      paramlxz.a(3, b.intValue());
    }
    if (c != null) {
      paramlxz.c(4, c.intValue());
    }
    if (d != null) {
      paramlxz.a(6, d.booleanValue());
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (requestHeader != null) {
      i = j + lxz.d(1, requestHeader);
    }
    j = i;
    if (a != null) {
      j = i + lxz.d(2, a);
    }
    i = j;
    if (b != null) {
      i = j + lxz.e(3, b.intValue());
    }
    j = i;
    if (c != null) {
      j = i + lxz.f(4, c.intValue());
    }
    i = j;
    if (d != null)
    {
      d.booleanValue();
      i = j + (lxz.f(6) + 1);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     kel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */