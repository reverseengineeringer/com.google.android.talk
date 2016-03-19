public final class lke
  extends lyb<lke>
{
  public Boolean a = null;
  public ljf b = null;
  public lkq c = null;
  public lkq d = null;
  
  public lke()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a.booleanValue());
    }
    if (b != null) {
      paramlxz.b(2, b);
    }
    if (c != null) {
      paramlxz.b(6, c);
    }
    if (d != null) {
      paramlxz.b(7, d);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (a != null)
    {
      a.booleanValue();
      i = j + (lxz.f(1) + 1);
    }
    j = i;
    if (b != null) {
      j = i + lxz.d(2, b);
    }
    i = j;
    if (c != null) {
      i = j + lxz.d(6, c);
    }
    j = i;
    if (d != null) {
      j = i + lxz.d(7, d);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     lke
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */