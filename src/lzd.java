public final class lzd
  extends lyb<lzd>
{
  private static volatile lzd[] c;
  public Integer a = null;
  public String b = null;
  
  public lzd()
  {
    eD = null;
    eE = -1;
  }
  
  public static lzd[] d()
  {
    if (c == null) {}
    synchronized (lyf.a)
    {
      if (c == null) {
        c = new lzd[0];
      }
      return c;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a.intValue());
    }
    if (b != null) {
      paramlxz.a(2, b);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (a != null) {
      i = j + lxz.e(1, a.intValue());
    }
    j = i;
    if (b != null) {
      j = i + lxz.b(2, b);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     lzd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */