public final class jhq
  extends lyb<jhq>
{
  public String a = null;
  public String b = null;
  
  public jhq()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    paramlxz.a(1, a);
    paramlxz.a(2, b);
    super.a(paramlxz);
  }
  
  protected int b()
  {
    return super.b() + lxz.b(1, a) + lxz.b(2, b);
  }
}

/* Location:
 * Qualified Name:     jhq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */