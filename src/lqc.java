public final class lqc
  extends lyb<lqc>
{
  public lpy a = null;
  public lpy b = null;
  
  public lqc()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.b(4, a);
    }
    if (b != null) {
      paramlxz.b(5, b);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (a != null) {
      i = j + lxz.d(4, a);
    }
    j = i;
    if (b != null) {
      j = i + lxz.d(5, b);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     lqc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */