public final class lul
  extends lyb<lul>
{
  public String a = null;
  public Float b = null;
  public Float c = null;
  public String d = null;
  public Integer e = null;
  public Integer f = null;
  public String g = null;
  
  public lul()
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
      paramlxz.a(2, b.floatValue());
    }
    if (c != null) {
      paramlxz.a(3, c.floatValue());
    }
    if (d != null) {
      paramlxz.a(4, d);
    }
    if (e != null) {
      paramlxz.a(5, e.intValue());
    }
    if (f != null) {
      paramlxz.a(6, f.intValue());
    }
    if (g != null) {
      paramlxz.a(7, g);
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
    if (b != null)
    {
      b.floatValue();
      j = i + (lxz.f(2) + 4);
    }
    i = j;
    if (c != null)
    {
      c.floatValue();
      i = j + (lxz.f(3) + 4);
    }
    j = i;
    if (d != null) {
      j = i + lxz.b(4, d);
    }
    i = j;
    if (e != null) {
      i = j + lxz.e(5, e.intValue());
    }
    j = i;
    if (f != null) {
      j = i + lxz.e(6, f.intValue());
    }
    i = j;
    if (g != null) {
      i = j + lxz.b(7, g);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     lul
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */