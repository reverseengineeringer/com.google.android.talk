public final class luv
  extends lyb<luv>
{
  public Float a = null;
  public Float b = null;
  public Float c = null;
  public Float d = null;
  public Float e = null;
  public Float f = null;
  public Float g = null;
  public Float h = null;
  public Float i = null;
  
  public luv()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    paramlxz.a(1, a.floatValue());
    paramlxz.a(2, b.floatValue());
    paramlxz.a(3, c.floatValue());
    paramlxz.a(4, d.floatValue());
    paramlxz.a(5, e.floatValue());
    paramlxz.a(6, f.floatValue());
    paramlxz.a(7, g.floatValue());
    paramlxz.a(8, h.floatValue());
    paramlxz.a(9, i.floatValue());
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    a.floatValue();
    int k = lxz.f(1);
    b.floatValue();
    int m = lxz.f(2);
    c.floatValue();
    int n = lxz.f(3);
    d.floatValue();
    int i1 = lxz.f(4);
    e.floatValue();
    int i2 = lxz.f(5);
    f.floatValue();
    int i3 = lxz.f(6);
    g.floatValue();
    int i4 = lxz.f(7);
    h.floatValue();
    int i5 = lxz.f(8);
    i.floatValue();
    return j + (k + 4) + (m + 4) + (n + 4) + (i1 + 4) + (i2 + 4) + (i3 + 4) + (i4 + 4) + (i5 + 4) + (lxz.f(9) + 4);
  }
}

/* Location:
 * Qualified Name:     luv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */