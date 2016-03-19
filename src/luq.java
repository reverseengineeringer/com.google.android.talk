public final class luq
  extends lyb<luq>
{
  public Float a = null;
  public Float b = null;
  public Float c = null;
  public Float d = null;
  public Float e = null;
  public Float f = null;
  public Float g = null;
  public Float h = null;
  
  public luq()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a.floatValue());
    }
    if (b != null) {
      paramlxz.a(2, b.floatValue());
    }
    if (c != null) {
      paramlxz.a(3, c.floatValue());
    }
    if (g != null) {
      paramlxz.a(7, g.floatValue());
    }
    if (h != null) {
      paramlxz.a(8, h.floatValue());
    }
    if (e != null) {
      paramlxz.a(9, e.floatValue());
    }
    if (d != null) {
      paramlxz.a(10, d.floatValue());
    }
    if (f != null) {
      paramlxz.a(11, f.floatValue());
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (a != null)
    {
      a.floatValue();
      i = j + (lxz.f(1) + 4);
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
    if (g != null)
    {
      g.floatValue();
      j = i + (lxz.f(7) + 4);
    }
    i = j;
    if (h != null)
    {
      h.floatValue();
      i = j + (lxz.f(8) + 4);
    }
    j = i;
    if (e != null)
    {
      e.floatValue();
      j = i + (lxz.f(9) + 4);
    }
    i = j;
    if (d != null)
    {
      d.floatValue();
      i = j + (lxz.f(10) + 4);
    }
    j = i;
    if (f != null)
    {
      f.floatValue();
      j = i + (lxz.f(11) + 4);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     luq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */