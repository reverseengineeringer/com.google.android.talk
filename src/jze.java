public final class jze
  extends lyb<jze>
{
  public jxw a = null;
  public jzc b = null;
  public kdo requestHeader = null;
  
  public jze()
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
    if (b != null) {
      paramlxz.b(3, b);
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
    i = j;
    if (b != null) {
      i = j + lxz.d(3, b);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     jze
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */