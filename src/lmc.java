public final class lmc
  extends lyb<lmc>
{
  public Long a = null;
  public Long b = null;
  public Boolean c = null;
  public Long d = null;
  
  public lmc()
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
      paramlxz.a(3, c.booleanValue());
    }
    if (d != null) {
      paramlxz.b(4, d.longValue());
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
    if (c != null)
    {
      c.booleanValue();
      i = j + (lxz.f(3) + 1);
    }
    j = i;
    if (d != null) {
      j = i + lxz.e(4, d.longValue());
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     lmc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */