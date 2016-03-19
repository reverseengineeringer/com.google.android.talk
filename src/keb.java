public final class keb
  extends lyb<keb>
{
  public Integer a = null;
  public Long b = null;
  public Long c = null;
  public kdp responseHeader = null;
  
  public keb()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (responseHeader != null) {
      paramlxz.b(1, responseHeader);
    }
    if (a != null) {
      paramlxz.a(2, a.intValue());
    }
    if (b != null) {
      paramlxz.a(3, b.longValue());
    }
    if (c != null) {
      paramlxz.a(4, c.longValue());
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (responseHeader != null) {
      i = j + lxz.d(1, responseHeader);
    }
    j = i;
    if (a != null) {
      j = i + lxz.e(2, a.intValue());
    }
    i = j;
    if (b != null) {
      i = j + lxz.d(3, b.longValue());
    }
    j = i;
    if (c != null) {
      j = i + lxz.d(4, c.longValue());
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     keb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */