public final class lbv
  extends lyb<lbv>
{
  public lbw a = null;
  
  public lbv()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.b(15, a);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (a != null) {
      i = j + lxz.d(15, a);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     lbv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */