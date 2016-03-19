public final class kzr
  extends lyb<kzr>
{
  public Long a = null;
  public Long b = null;
  public Long c = null;
  
  public kzr()
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
      paramlxz.b(2, b.longValue());
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
      j = i + lxz.e(2, b.longValue());
    }
    i = j;
    if (c != null) {
      i = j + lxz.e(3, c.longValue());
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     kzr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */