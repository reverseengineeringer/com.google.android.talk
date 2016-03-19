public final class lcp
  extends lyb<lcp>
{
  public Integer a = null;
  public Integer b = null;
  public Float c = null;
  
  public lcp()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a.intValue());
    }
    if (b != null) {
      paramlxz.a(2, b.intValue());
    }
    if (c != null) {
      paramlxz.a(4, c.floatValue());
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (a != null) {
      i = j + lxz.e(1, a.intValue());
    }
    j = i;
    if (b != null) {
      j = i + lxz.e(2, b.intValue());
    }
    i = j;
    if (c != null)
    {
      c.floatValue();
      i = j + (lxz.f(4) + 4);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     lcp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */