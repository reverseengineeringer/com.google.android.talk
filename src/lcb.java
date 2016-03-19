public final class lcb
  extends lyb<lcb>
{
  public Integer a = null;
  public Integer b = null;
  public Double c = null;
  
  public lcb()
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
      paramlxz.a(2, b.intValue());
    }
    if (c != null) {
      paramlxz.a(3, c.doubleValue());
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (a != null) {
      i = j + lxz.e(1, a.intValue());
    }
    j = i;
    if (b != null) {
      j = i + lxz.e(2, b.intValue());
    }
    i = j;
    if (c != null)
    {
      c.doubleValue();
      i = j + (lxz.f(3) + 8);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     lcb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */