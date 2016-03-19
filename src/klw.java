public final class klw
  extends lyb<klw>
{
  public Integer a = null;
  public Integer b = null;
  public Integer c = null;
  public Boolean d = null;
  
  public klw()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (b != null) {
      paramlxz.a(2, b.intValue());
    }
    if (c != null) {
      paramlxz.a(3, c.intValue());
    }
    if (d != null) {
      paramlxz.a(4, d.booleanValue());
    }
    if (a != null) {
      paramlxz.a(21, a.intValue());
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (b != null) {
      i = j + lxz.e(2, b.intValue());
    }
    j = i;
    if (c != null) {
      j = i + lxz.e(3, c.intValue());
    }
    i = j;
    if (d != null)
    {
      d.booleanValue();
      i = j + (lxz.f(4) + 1);
    }
    j = i;
    if (a != null) {
      j = i + lxz.e(21, a.intValue());
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     klw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */