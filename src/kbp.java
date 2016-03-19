public final class kbp
  extends lyb<kbp>
{
  public Long a = null;
  
  public kbp()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a.longValue());
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (a != null) {
      i = j + lxz.d(1, a.longValue());
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     kbp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */