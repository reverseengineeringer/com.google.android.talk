public final class jof
  extends lyb<jof>
{
  public String a = null;
  public String b = null;
  public String c = null;
  public Boolean d = null;
  public Boolean e = null;
  
  public jof()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a);
    }
    if (b != null) {
      paramlxz.a(2, b);
    }
    if (c != null) {
      paramlxz.a(3, c);
    }
    if (d != null) {
      paramlxz.a(5, d.booleanValue());
    }
    if (e != null) {
      paramlxz.a(6, e.booleanValue());
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (a != null) {
      i = j + lxz.b(1, a);
    }
    j = i;
    if (b != null) {
      j = i + lxz.b(2, b);
    }
    i = j;
    if (c != null) {
      i = j + lxz.b(3, c);
    }
    j = i;
    if (d != null)
    {
      d.booleanValue();
      j = i + (lxz.f(5) + 1);
    }
    i = j;
    if (e != null)
    {
      e.booleanValue();
      i = j + (lxz.f(6) + 1);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     jof
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */