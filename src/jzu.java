public final class jzu
  extends lyb<jzu>
{
  public String a = null;
  public String b = null;
  public Boolean c = null;
  public Boolean d = null;
  
  public jzu()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (b != null) {
      paramlxz.a(1, b);
    }
    if (c != null) {
      paramlxz.a(2, c.booleanValue());
    }
    if (a != null) {
      paramlxz.a(3, a);
    }
    if (d != null) {
      paramlxz.a(4, d.booleanValue());
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (b != null) {
      i = j + lxz.b(1, b);
    }
    j = i;
    if (c != null)
    {
      c.booleanValue();
      j = i + (lxz.f(2) + 1);
    }
    i = j;
    if (a != null) {
      i = j + lxz.b(3, a);
    }
    j = i;
    if (d != null)
    {
      d.booleanValue();
      j = i + (lxz.f(4) + 1);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     jzu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */