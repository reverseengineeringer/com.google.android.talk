public final class jfy
  extends lyb<jfy>
{
  public Long a = null;
  public Long b = null;
  public Boolean c = null;
  public Boolean d = null;
  
  public jfy()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    paramlxz.b(1, a.longValue());
    paramlxz.b(2, b.longValue());
    paramlxz.a(3, c.booleanValue());
    if (d != null) {
      paramlxz.a(4, d.booleanValue());
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i = super.b();
    int j = lxz.e(1, a.longValue());
    int k = lxz.e(2, b.longValue());
    c.booleanValue();
    j = i + j + k + (lxz.f(3) + 1);
    i = j;
    if (d != null)
    {
      d.booleanValue();
      i = j + (lxz.f(4) + 1);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     jfy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */