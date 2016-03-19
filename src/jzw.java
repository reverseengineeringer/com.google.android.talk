public final class jzw
  extends lyb<jzw>
{
  public Long a = null;
  public Double b = null;
  public String c = null;
  public Boolean d = null;
  
  public jzw()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.b(1, a.longValue());
    }
    if (b != null) {
      paramlxz.a(2, b.doubleValue());
    }
    if (c != null) {
      paramlxz.a(3, c);
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
    if (a != null) {
      i = j + lxz.e(1, a.longValue());
    }
    j = i;
    if (b != null)
    {
      b.doubleValue();
      j = i + (lxz.f(2) + 8);
    }
    i = j;
    if (c != null) {
      i = j + lxz.b(3, c);
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
 * Qualified Name:     jzw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */