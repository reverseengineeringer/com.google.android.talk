public final class keh
  extends lyb<keh>
{
  public jxw a = null;
  public Integer b = null;
  public Integer c = null;
  public kdo requestHeader = null;
  
  public keh()
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
      paramlxz.a(3, b.intValue());
    }
    if (c != null) {
      paramlxz.a(4, c.intValue());
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
      i = j + lxz.e(3, b.intValue());
    }
    j = i;
    if (c != null) {
      j = i + lxz.e(4, c.intValue());
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     keh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */