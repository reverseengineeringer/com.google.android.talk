public final class mcb
  extends lyb<mcb>
{
  public String a = null;
  public String b = null;
  public Long c = null;
  
  public mcb()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    paramlxz.a(1, a);
    paramlxz.a(2, b);
    if (c != null) {
      paramlxz.b(7, c.longValue());
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b() + lxz.b(1, a) + lxz.b(2, b);
    int i = j;
    if (c != null) {
      i = j + lxz.e(7, c.longValue());
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     mcb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */