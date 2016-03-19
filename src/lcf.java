public final class lcf
  extends lyb<lcf>
{
  private static volatile lcf[] c;
  public String a = null;
  public lcg b = null;
  
  public lcf()
  {
    eD = null;
    eE = -1;
  }
  
  public static lcf[] d()
  {
    if (c == null) {}
    synchronized (lyf.a)
    {
      if (c == null) {
        c = new lcf[0];
      }
      return c;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a);
    }
    if (b != null) {
      paramlxz.b(2, b);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (a != null) {
      i = j + lxz.b(1, a);
    }
    j = i;
    if (b != null) {
      j = i + lxz.d(2, b);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     lcf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */