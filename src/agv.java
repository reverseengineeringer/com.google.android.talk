public final class agv<T>
{
  public final T a;
  public final agj b;
  public final aha c;
  public boolean d = false;
  
  private agv(aha paramaha)
  {
    a = null;
    b = null;
    c = paramaha;
  }
  
  public agv(T paramT, agj paramagj)
  {
    a = paramT;
    b = paramagj;
    c = null;
  }
  
  public static <T> agv<T> a(aha paramaha)
  {
    return new agv(paramaha);
  }
  
  public boolean a()
  {
    return c == null;
  }
}

/* Location:
 * Qualified Name:     agv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */