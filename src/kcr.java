public final class kcr
  extends lyb<kcr>
{
  private static volatile kcr[] c;
  public String a = null;
  public String b = null;
  
  public kcr()
  {
    eD = null;
    eE = -1;
  }
  
  public static kcr[] d()
  {
    if (c == null) {}
    synchronized (lyf.a)
    {
      if (c == null) {
        c = new kcr[0];
      }
      return c;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (b != null) {
      paramlxz.a(1, b);
    }
    if (a != null) {
      paramlxz.a(2, a);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (b != null) {
      i = j + lxz.b(1, b);
    }
    j = i;
    if (a != null) {
      j = i + lxz.b(2, a);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     kcr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */