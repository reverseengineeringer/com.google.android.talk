public final class dxi
  implements eff
{
  private static final long serialVersionUID = 2L;
  private int a = 0;
  private final String b;
  private final boolean c;
  private String d;
  
  public dxi(boolean paramBoolean)
  {
    c = paramBoolean;
    b = ezi.a(new Throwable());
  }
  
  public void a(int paramInt)
  {
    a = paramInt;
  }
  
  public boolean a()
  {
    return c;
  }
  
  public void a_(String paramString)
  {
    d = paramString;
  }
  
  public int c()
  {
    return a;
  }
  
  public cwi d()
  {
    return new dxh(this);
  }
  
  public String toString()
  {
    return aal.f(this).a("shouldRetry", c).a("creationStack", b).a("originStack", d).toString();
  }
}

/* Location:
 * Qualified Name:     dxi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */