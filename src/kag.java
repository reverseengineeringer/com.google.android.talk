public final class kag
  extends lyb<kag>
{
  public jyb a = null;
  public Boolean b = null;
  public Boolean c = null;
  public jzp d = null;
  public jzp e = null;
  public Integer f = null;
  public Integer g = null;
  public Boolean h = null;
  public kdo requestHeader = null;
  
  public kag()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (requestHeader != null) {
      paramlxz.b(1, requestHeader);
    }
    if (a != null) {
      paramlxz.b(2, a);
    }
    if (b != null) {
      paramlxz.a(3, b.booleanValue());
    }
    if (c != null) {
      paramlxz.a(4, c.booleanValue());
    }
    if (f != null) {
      paramlxz.a(6, f.intValue());
    }
    if (d != null) {
      paramlxz.b(7, d);
    }
    if (h != null) {
      paramlxz.a(8, h.booleanValue());
    }
    if (g != null) {
      paramlxz.a(9, g.intValue());
    }
    if (e != null) {
      paramlxz.b(11, e);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (requestHeader != null) {
      i = j + lxz.d(1, requestHeader);
    }
    j = i;
    if (a != null) {
      j = i + lxz.d(2, a);
    }
    i = j;
    if (b != null)
    {
      b.booleanValue();
      i = j + (lxz.f(3) + 1);
    }
    j = i;
    if (c != null)
    {
      c.booleanValue();
      j = i + (lxz.f(4) + 1);
    }
    i = j;
    if (f != null) {
      i = j + lxz.e(6, f.intValue());
    }
    j = i;
    if (d != null) {
      j = i + lxz.d(7, d);
    }
    i = j;
    if (h != null)
    {
      h.booleanValue();
      i = j + (lxz.f(8) + 1);
    }
    j = i;
    if (g != null) {
      j = i + lxz.e(9, g.intValue());
    }
    i = j;
    if (e != null) {
      i = j + lxz.d(11, e);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     kag
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */