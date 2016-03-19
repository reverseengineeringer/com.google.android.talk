public final class lus
  extends lyb<lus>
{
  public Integer a = null;
  public Integer b = null;
  public Integer c = null;
  public Integer d = null;
  
  public lus()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    paramlxz.a(1, a.intValue());
    paramlxz.a(2, b.intValue());
    paramlxz.a(3, c.intValue());
    paramlxz.a(4, d.intValue());
    super.a(paramlxz);
  }
  
  protected int b()
  {
    return super.b() + lxz.e(1, a.intValue()) + lxz.e(2, b.intValue()) + lxz.e(3, c.intValue()) + lxz.e(4, d.intValue());
  }
}

/* Location:
 * Qualified Name:     lus
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */