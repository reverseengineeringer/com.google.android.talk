public final class mbw
  extends lyb<mbw>
{
  public String a = null;
  public Long b = null;
  
  public mbw()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    paramlxz.a(1, a);
    paramlxz.b(2, b.longValue());
    super.a(paramlxz);
  }
  
  protected int b()
  {
    return super.b() + lxz.b(1, a) + lxz.e(2, b.longValue());
  }
}

/* Location:
 * Qualified Name:     mbw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */