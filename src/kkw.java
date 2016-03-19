public final class kkw
  extends lyb<kkw>
{
  public Boolean a = null;
  public Boolean b = null;
  
  public kkw()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a.booleanValue());
    }
    if (b != null) {
      paramlxz.a(2, b.booleanValue());
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (a != null)
    {
      a.booleanValue();
      i = j + (lxz.f(1) + 1);
    }
    j = i;
    if (b != null)
    {
      b.booleanValue();
      j = i + (lxz.f(2) + 1);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     kkw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */