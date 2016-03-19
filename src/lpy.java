public final class lpy
  extends lyb<lpy>
{
  public lqa a = null;
  public lkc b = null;
  
  public lpy()
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
      paramlxz.b(3, b);
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
    if (b != null) {
      j = i + lxz.d(3, b);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     lpy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */