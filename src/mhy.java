public final class mhy
  extends lyb<mhy>
{
  public Long a = null;
  public String b = null;
  
  public mhy()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.c(1, a.longValue());
    }
    if (b != null) {
      paramlxz.a(2, b);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (a != null)
    {
      a.longValue();
      i = j + (lxz.f(1) + 8);
    }
    j = i;
    if (b != null) {
      j = i + lxz.b(2, b);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     mhy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */