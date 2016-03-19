public final class ivg
  extends lyb<ivg>
{
  public Boolean a = null;
  
  public ivg()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a.booleanValue());
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
    return i;
  }
}

/* Location:
 * Qualified Name:     ivg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */