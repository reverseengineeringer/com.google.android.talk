public final class jvh
  extends lyb<jvh>
{
  public Integer a = null;
  public Integer b = null;
  
  public jvh()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    paramlxz.a(1, a.intValue());
    paramlxz.a(2, b.intValue());
    super.a(paramlxz);
  }
  
  protected int b()
  {
    return super.b() + lxz.e(1, a.intValue()) + lxz.e(2, b.intValue());
  }
}

/* Location:
 * Qualified Name:     jvh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */