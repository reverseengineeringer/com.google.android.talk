public final class mab
  extends lyb<mab>
{
  public Boolean a = null;
  public Boolean b = null;
  public Boolean c = null;
  public Boolean d = null;
  public Boolean e = null;
  public Boolean f = null;
  public Boolean g = null;
  
  public mab()
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
      paramlxz.a(2, b.booleanValue());
    }
    if (c != null) {
      paramlxz.a(3, c.booleanValue());
    }
    if (d != null) {
      paramlxz.a(4, d.booleanValue());
    }
    if (e != null) {
      paramlxz.a(5, e.booleanValue());
    }
    if (f != null) {
      paramlxz.a(6, f.booleanValue());
    }
    if (g != null) {
      paramlxz.a(7, g.booleanValue());
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
    if (b != null)
    {
      b.booleanValue();
      j = i + (lxz.f(2) + 1);
    }
    i = j;
    if (c != null)
    {
      c.booleanValue();
      i = j + (lxz.f(3) + 1);
    }
    j = i;
    if (d != null)
    {
      d.booleanValue();
      j = i + (lxz.f(4) + 1);
    }
    i = j;
    if (e != null)
    {
      e.booleanValue();
      i = j + (lxz.f(5) + 1);
    }
    j = i;
    if (f != null)
    {
      f.booleanValue();
      j = i + (lxz.f(6) + 1);
    }
    i = j;
    if (g != null)
    {
      g.booleanValue();
      i = j + (lxz.f(7) + 1);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     mab
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */