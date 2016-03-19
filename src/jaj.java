public final class jaj
  extends lyb<jaj>
{
  public jbn a = null;
  public Boolean b = null;
  
  public jaj()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.b(1, a);
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
    if (a != null) {
      i = j + lxz.d(1, a);
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
 * Qualified Name:     jaj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */