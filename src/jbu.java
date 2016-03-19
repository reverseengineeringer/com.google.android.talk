public final class jbu
  extends lyb<jbu>
{
  public jbn a = null;
  public Float b = null;
  
  public jbu()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.b(1, a);
    }
    paramlxz.a(2, b.floatValue());
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (a != null) {
      i = j + lxz.d(1, a);
    }
    b.floatValue();
    return i + (lxz.f(2) + 4);
  }
}

/* Location:
 * Qualified Name:     jbu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */