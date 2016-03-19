public final class luk
  extends lyb<luk>
{
  public Long a = null;
  
  public luk()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.b(1, a.longValue());
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (a != null) {
      i = j + lxz.e(1, a.longValue());
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     luk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */