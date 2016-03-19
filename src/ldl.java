public final class ldl
  extends lyb<ldl>
{
  public Long a = null;
  
  public ldl()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.c(1, a.longValue());
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (a != null)
    {
      a.longValue();
      i = j + (lxz.f(1) + 8);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     ldl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */