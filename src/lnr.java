public final class lnr
  extends lyb<lnr>
{
  public String a = null;
  public Boolean b = null;
  public Long c = null;
  public String d = null;
  
  public lnr()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a);
    }
    if (c != null) {
      paramlxz.b(2, c.longValue());
    }
    if (d != null) {
      paramlxz.a(3, d);
    }
    if (b != null) {
      paramlxz.a(4, b.booleanValue());
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
    if (c != null) {
      j = i + lxz.e(2, c.longValue());
    }
    i = j;
    if (d != null) {
      i = j + lxz.b(3, d);
    }
    j = i;
    if (b != null)
    {
      b.booleanValue();
      j = i + (lxz.f(4) + 1);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     lnr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */