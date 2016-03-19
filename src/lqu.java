public final class lqu
  extends lyb<lqu>
{
  public Boolean a = null;
  public int b = Integer.MIN_VALUE;
  
  public lqu()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a.booleanValue());
    }
    if (b != Integer.MIN_VALUE) {
      paramlxz.a(2, b);
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
    if (b != Integer.MIN_VALUE) {
      j = i + lxz.e(2, b);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     lqu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */