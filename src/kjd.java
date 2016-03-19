public final class kjd
  extends lyb<kjd>
{
  public String a = null;
  public Float b = null;
  
  public kjd()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    paramlxz.a(1, a);
    if (b != null) {
      paramlxz.a(2, b.floatValue());
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b() + lxz.b(1, a);
    int i = j;
    if (b != null)
    {
      b.floatValue();
      i = j + (lxz.f(2) + 4);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     kjd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */