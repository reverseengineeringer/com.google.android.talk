public final class jfw
  extends lyb<jfw>
{
  public Double a = null;
  public Double b = null;
  public Double c = null;
  public Double d = null;
  
  public jfw()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    paramlxz.a(1, a.doubleValue());
    paramlxz.a(2, b.doubleValue());
    paramlxz.a(3, c.doubleValue());
    paramlxz.a(4, d.doubleValue());
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i = super.b();
    a.doubleValue();
    int j = lxz.f(1);
    b.doubleValue();
    int k = lxz.f(2);
    c.doubleValue();
    int m = lxz.f(3);
    d.doubleValue();
    return i + (j + 8) + (k + 8) + (m + 8) + (lxz.f(4) + 8);
  }
}

/* Location:
 * Qualified Name:     jfw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */