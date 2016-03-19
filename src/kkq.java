public final class kkq
  extends lyb<kkq>
{
  public kkp a = null;
  public kdo requestHeader = null;
  
  public kkq()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (requestHeader != null) {
      paramlxz.b(1, requestHeader);
    }
    if (a != null) {
      paramlxz.b(2, a);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (requestHeader != null) {
      i = j + lxz.d(1, requestHeader);
    }
    j = i;
    if (a != null) {
      j = i + lxz.d(2, a);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     kkq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */