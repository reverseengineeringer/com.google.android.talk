public final class kew
  extends lyb<kew>
{
  public lcf a = null;
  public Integer b = null;
  public kex c = null;
  public kdo requestHeader = null;
  
  public kew()
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
      paramlxz.b(4, c);
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
      j = i + lxz.d(4, c);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     kew
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */