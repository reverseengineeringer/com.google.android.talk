public final class kjc
  extends lyb<kjc>
{
  public Boolean a = null;
  public String b = null;
  public Float c = null;
  
  public kjc()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    paramlxz.a(1, a.booleanValue());
    if (b != null) {
      paramlxz.a(2, b);
    }
    if (c != null) {
      paramlxz.a(3, c.floatValue());
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i = super.b();
    a.booleanValue();
    int j = i + (lxz.f(1) + 1);
    i = j;
    if (b != null) {
      i = j + lxz.b(2, b);
    }
    j = i;
    if (c != null)
    {
      c.floatValue();
      j = i + (lxz.f(3) + 4);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     kjc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */