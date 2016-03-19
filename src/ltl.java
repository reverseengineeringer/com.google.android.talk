public final class ltl
  extends lyb<ltl>
{
  public Integer a = null;
  public Float b = null;
  
  public ltl()
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
      paramlxz.a(2, b.floatValue());
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
    if (b != null)
    {
      b.floatValue();
      j = i + (lxz.f(2) + 4);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     ltl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */