public final class mbs
  extends lyb<mbs>
{
  public String a = null;
  public Long b = null;
  public Long c = null;
  public mbq d = null;
  public mbq e = null;
  
  public mbs()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    paramlxz.a(1, a);
    paramlxz.b(2, b.longValue());
    paramlxz.b(3, c.longValue());
    if (d != null) {
      paramlxz.b(4, d);
    }
    if (e != null) {
      paramlxz.b(5, e);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b() + lxz.b(1, a) + lxz.e(2, b.longValue()) + lxz.e(3, c.longValue());
    int i = j;
    if (d != null) {
      i = j + lxz.d(4, d);
    }
    j = i;
    if (e != null) {
      j = i + lxz.d(5, e);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     mbs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */