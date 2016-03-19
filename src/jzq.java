public final class jzq
  extends lyb<jzq>
{
  public jzl a = null;
  
  public jzq()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.b(1, a);
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
    return i;
  }
}

/* Location:
 * Qualified Name:     jzq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */