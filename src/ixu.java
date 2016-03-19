public final class ixu
  extends lyb<ixu>
{
  public Boolean a = null;
  public Boolean b = null;
  public Boolean c = null;
  public Integer d = null;
  public Integer e = null;
  
  public ixu()
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
      paramlxz.a(5, d.intValue());
    }
    if (e != null) {
      paramlxz.a(6, e.intValue());
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
    if (d != null) {
      j = i + lxz.e(5, d.intValue());
    }
    i = j;
    if (e != null) {
      i = j + lxz.e(6, e.intValue());
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     ixu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */