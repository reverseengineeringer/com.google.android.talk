public final class mjg
  extends lyb<mjg>
{
  public Double a = null;
  public String b = null;
  
  public mjg()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a.doubleValue());
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
      a.doubleValue();
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
 * Qualified Name:     mjg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */