public final class mhs
  extends lyb<mhs>
{
  public Long a = null;
  public Boolean b = null;
  public Integer c = null;
  public String d = null;
  
  public mhs()
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
      paramlxz.a(2, b.booleanValue());
    }
    if (c != null) {
      paramlxz.a(3, c.intValue());
    }
    if (d != null) {
      paramlxz.a(4, d);
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
    if (b != null)
    {
      b.booleanValue();
      j = i + (lxz.f(2) + 1);
    }
    i = j;
    if (c != null) {
      i = j + lxz.e(3, c.intValue());
    }
    j = i;
    if (d != null) {
      j = i + lxz.b(4, d);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     mhs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */