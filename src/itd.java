public final class itd
  extends lyb<itd>
{
  public Long a = null;
  public String b = null;
  public Long c = null;
  
  public itd()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.b(1, a.longValue());
    }
    if (b != null) {
      paramlxz.a(2, b);
    }
    if (c != null) {
      paramlxz.b(3, c.longValue());
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (a != null) {
      i = j + lxz.e(1, a.longValue());
    }
    j = i;
    if (b != null) {
      j = i + lxz.b(2, b);
    }
    i = j;
    if (c != null) {
      i = j + lxz.e(3, c.longValue());
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     itd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */