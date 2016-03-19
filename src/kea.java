public final class kea
  extends lyb<kea>
{
  public Boolean a = null;
  public String b = null;
  public Integer c = null;
  public Boolean d = null;
  public kdo requestHeader = null;
  
  public kea()
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
      paramlxz.a(2, a.booleanValue());
    }
    if (b != null) {
      paramlxz.a(3, b);
    }
    if (c != null) {
      paramlxz.c(4, c.intValue());
    }
    if (d != null) {
      paramlxz.a(5, d.booleanValue());
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
    if (a != null)
    {
      a.booleanValue();
      j = i + (lxz.f(2) + 1);
    }
    i = j;
    if (b != null) {
      i = j + lxz.b(3, b);
    }
    j = i;
    if (c != null) {
      j = i + lxz.f(4, c.intValue());
    }
    i = j;
    if (d != null)
    {
      d.booleanValue();
      i = j + (lxz.f(5) + 1);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     kea
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */