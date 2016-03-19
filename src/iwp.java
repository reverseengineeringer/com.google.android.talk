public final class iwp
  extends lyb<iwp>
{
  public Double a = null;
  public Double b = null;
  
  public iwp()
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
      paramlxz.a(2, b.doubleValue());
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
    if (b != null)
    {
      b.doubleValue();
      j = i + (lxz.f(2) + 8);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     iwp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */