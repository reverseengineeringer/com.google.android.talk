public final class kmf
  extends lyb<kmf>
{
  public lcf a = null;
  public byte[] b = null;
  public Long c = null;
  
  public kmf()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.b(1, a);
    }
    if (b != null) {
      paramlxz.a(2, b);
    }
    if (c != null) {
      paramlxz.a(3, c.longValue());
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (a != null) {
      i = j + lxz.d(1, a);
    }
    j = i;
    if (b != null) {
      j = i + lxz.b(2, b);
    }
    i = j;
    if (c != null) {
      i = j + lxz.d(3, c.longValue());
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     kmf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */