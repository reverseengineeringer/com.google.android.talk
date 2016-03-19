public final class kgh
  extends lyb<kgh>
{
  public Integer a = null;
  public Long b = null;
  public Boolean c = null;
  
  public kgh()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(3, a.intValue());
    }
    if (b != null) {
      paramlxz.b(4, b.longValue());
    }
    if (c != null) {
      paramlxz.a(5, c.booleanValue());
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (a != null) {
      i = j + lxz.e(3, a.intValue());
    }
    j = i;
    if (b != null) {
      j = i + lxz.e(4, b.longValue());
    }
    i = j;
    if (c != null)
    {
      c.booleanValue();
      i = j + (lxz.f(5) + 1);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     kgh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */