public final class jzp
  extends lyb<jzp>
{
  public Long a = null;
  public byte[] b = null;
  public String c = null;
  
  public jzp()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (c != null) {
      paramlxz.a(1, c);
    }
    if (b != null) {
      paramlxz.a(2, b);
    }
    if (a != null) {
      paramlxz.a(3, a.longValue());
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (c != null) {
      i = j + lxz.b(1, c);
    }
    j = i;
    if (b != null) {
      j = i + lxz.b(2, b);
    }
    i = j;
    if (a != null) {
      i = j + lxz.d(3, a.longValue());
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     jzp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */