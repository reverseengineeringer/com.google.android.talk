public final class jkf
  extends lyb<jkf>
{
  public Integer a = null;
  public String b = null;
  
  public jkf()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    paramlxz.a(1, a.intValue());
    paramlxz.a(2, b);
    super.a(paramlxz);
  }
  
  protected int b()
  {
    return super.b() + lxz.e(1, a.intValue()) + lxz.b(2, b);
  }
}

/* Location:
 * Qualified Name:     jkf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */