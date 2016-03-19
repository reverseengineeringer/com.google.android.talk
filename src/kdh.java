public final class kdh
  extends lyb<kdh>
{
  public jzr a = null;
  public kcr b = null;
  public byte[] c = null;
  public Long d = null;
  public kdo requestHeader = null;
  
  public kdh()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (requestHeader != null) {
      paramlxz.b(1, requestHeader);
    }
    if (c != null) {
      paramlxz.a(2, c);
    }
    if (b != null) {
      paramlxz.b(3, b);
    }
    if (d != null) {
      paramlxz.a(4, d.longValue());
    }
    if (a != null) {
      paramlxz.b(5, a);
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
    if (c != null) {
      j = i + lxz.b(2, c);
    }
    i = j;
    if (b != null) {
      i = j + lxz.d(3, b);
    }
    j = i;
    if (d != null) {
      j = i + lxz.d(4, d.longValue());
    }
    i = j;
    if (a != null) {
      i = j + lxz.d(5, a);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     kdh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */