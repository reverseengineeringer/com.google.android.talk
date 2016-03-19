public final class let
  extends lyb<let>
{
  public Double a = null;
  public Double b = null;
  public Double c = null;
  public Double d = null;
  public Double e = null;
  public Double f = null;
  
  public let()
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
    if (c != null) {
      paramlxz.a(3, c.doubleValue());
    }
    if (d != null) {
      paramlxz.a(4, d.doubleValue());
    }
    if (e != null) {
      paramlxz.a(5, e.doubleValue());
    }
    if (f != null) {
      paramlxz.a(6, f.doubleValue());
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
    i = j;
    if (c != null)
    {
      c.doubleValue();
      i = j + (lxz.f(3) + 8);
    }
    j = i;
    if (d != null)
    {
      d.doubleValue();
      j = i + (lxz.f(4) + 8);
    }
    i = j;
    if (e != null)
    {
      e.doubleValue();
      i = j + (lxz.f(5) + 8);
    }
    j = i;
    if (f != null)
    {
      f.doubleValue();
      j = i + (lxz.f(6) + 8);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     let
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */