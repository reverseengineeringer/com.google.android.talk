public final class lid
  extends lyb<lid>
{
  public Boolean a = null;
  public ljg b = null;
  public lia c = null;
  
  public lid()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (b != null) {
      paramlxz.b(1, b);
    }
    if (c != null) {
      paramlxz.b(2, c);
    }
    if (a != null) {
      paramlxz.a(3, a.booleanValue());
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (b != null) {
      i = j + lxz.d(1, b);
    }
    j = i;
    if (c != null) {
      j = i + lxz.d(2, c);
    }
    i = j;
    if (a != null)
    {
      a.booleanValue();
      i = j + (lxz.f(3) + 1);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     lid
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */