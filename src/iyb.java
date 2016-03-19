public final class iyb
  extends lyb<iyb>
{
  public Boolean a = null;
  public mqy b = null;
  public String c = null;
  public String d = null;
  
  public iyb()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(2, a.booleanValue());
    }
    if (b != null) {
      paramlxz.b(3, b);
    }
    if (c != null) {
      paramlxz.a(4, c);
    }
    if (d != null) {
      paramlxz.a(5, d);
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
      i = j + (lxz.f(2) + 1);
    }
    j = i;
    if (b != null) {
      j = i + lxz.d(3, b);
    }
    i = j;
    if (c != null) {
      i = j + lxz.b(4, c);
    }
    j = i;
    if (d != null) {
      j = i + lxz.b(5, d);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     iyb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */