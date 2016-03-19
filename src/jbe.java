public final class jbe
  extends lyb<jbe>
{
  public jbn a = null;
  public Long b = null;
  public Long c = null;
  public Integer d = null;
  public Boolean e = null;
  
  public jbe()
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
      paramlxz.b(2, b.longValue());
    }
    if (c != null) {
      paramlxz.b(3, c.longValue());
    }
    if (d != null) {
      paramlxz.a(4, d.intValue());
    }
    if (e != null) {
      paramlxz.a(5, e.booleanValue());
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (a != null) {
      i = j + lxz.d(1, a);
    }
    j = i;
    if (b != null) {
      j = i + lxz.e(2, b.longValue());
    }
    i = j;
    if (c != null) {
      i = j + lxz.e(3, c.longValue());
    }
    j = i;
    if (d != null) {
      j = i + lxz.e(4, d.intValue());
    }
    i = j;
    if (e != null)
    {
      e.booleanValue();
      i = j + (lxz.f(5) + 1);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     jbe
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */