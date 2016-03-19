public final class lkk
  extends lyb<lkk>
{
  public Boolean a = null;
  public lkr b = null;
  
  public lkk()
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
    return j;
  }
}

/* Location:
 * Qualified Name:     lkk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */