public final class lcg
  extends lyb<lcg>
{
  public String a = null;
  public String b = null;
  public Integer c = null;
  public String d = null;
  public Boolean e = null;
  public Integer f = null;
  
  public lcg()
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
      paramlxz.a(3, c.intValue());
    }
    if (d != null) {
      paramlxz.a(4, d);
    }
    if (e != null) {
      paramlxz.a(5, e.booleanValue());
    }
    if (f != null) {
      paramlxz.a(6, f.intValue());
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
      i = j + lxz.e(3, c.intValue());
    }
    j = i;
    if (d != null) {
      j = i + lxz.b(4, d);
    }
    i = j;
    if (e != null)
    {
      e.booleanValue();
      i = j + (lxz.f(5) + 1);
    }
    j = i;
    if (f != null) {
      j = i + lxz.e(6, f.intValue());
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     lcg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */