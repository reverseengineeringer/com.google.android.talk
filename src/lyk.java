public final class lyk
  extends lyb<lyk>
{
  private static volatile lyk[] c;
  public String a = null;
  public lyn b = null;
  
  public lyk()
  {
    eD = null;
    eE = -1;
  }
  
  public static lyk[] d()
  {
    if (c == null) {}
    synchronized (lyf.a)
    {
      if (c == null) {
        c = new lyk[0];
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
 * Qualified Name:     lyk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */