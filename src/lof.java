public final class lof
  extends lyb<lof>
{
  public Integer a = null;
  public Integer b = null;
  
  public lof()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.b(1, a.intValue());
    }
    if (b != null) {
      paramlxz.b(2, b.intValue());
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (a != null)
    {
      a.intValue();
      i = j + (lxz.f(1) + 4);
    }
    j = i;
    if (b != null)
    {
      b.intValue();
      j = i + (lxz.f(2) + 4);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     lof
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */