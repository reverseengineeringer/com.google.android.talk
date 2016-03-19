public final class jzf
  extends lyb<jzf>
{
  public Long a = null;
  public kdp responseHeader = null;
  
  public jzf()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (responseHeader != null) {
      paramlxz.b(1, responseHeader);
    }
    if (a != null) {
      paramlxz.a(2, a.longValue());
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (responseHeader != null) {
      i = j + lxz.d(1, responseHeader);
    }
    j = i;
    if (a != null) {
      j = i + lxz.d(2, a.longValue());
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     jzf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */