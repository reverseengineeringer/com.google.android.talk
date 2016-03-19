public final class lsd
  extends lyb<lsd>
{
  public String a = null;
  public String b = null;
  public String c = null;
  public Float d = null;
  public Float e = null;
  public Integer f = null;
  public Float g = null;
  
  public lsd()
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
      paramlxz.a(4, d.floatValue());
    }
    if (e != null) {
      paramlxz.a(5, e.floatValue());
    }
    if (f != null) {
      paramlxz.a(6, f.intValue());
    }
    if (g != null) {
      paramlxz.a(7, g.floatValue());
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
      d.floatValue();
      j = i + (lxz.f(4) + 4);
    }
    i = j;
    if (e != null)
    {
      e.floatValue();
      i = j + (lxz.f(5) + 4);
    }
    j = i;
    if (f != null) {
      j = i + lxz.e(6, f.intValue());
    }
    i = j;
    if (g != null)
    {
      g.floatValue();
      i = j + (lxz.f(7) + 4);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     lsd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */