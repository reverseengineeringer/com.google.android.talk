public final class jel
  extends lyb<jel>
{
  public Long a = null;
  
  public jel()
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
 * Qualified Name:     jel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */