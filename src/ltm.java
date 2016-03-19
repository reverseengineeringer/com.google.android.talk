public final class ltm
  extends lyb<ltm>
{
  public int a = Integer.MIN_VALUE;
  public Float b = null;
  
  public ltm()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != Integer.MIN_VALUE) {
      paramlxz.a(1, a);
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
    if (a != Integer.MIN_VALUE) {
      i = j + lxz.e(1, a);
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
 * Qualified Name:     ltm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */