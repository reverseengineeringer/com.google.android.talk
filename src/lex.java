public final class lex
  extends lyb<lex>
{
  public Double a = null;
  
  public lex()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a.doubleValue());
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (a != null)
    {
      a.doubleValue();
      i = j + (lxz.f(1) + 8);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     lex
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */