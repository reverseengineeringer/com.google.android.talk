public final class lhu
  extends lyb<lhu>
{
  private static volatile lhu[] c;
  public Integer a = null;
  public String b = null;
  
  public lhu()
  {
    eD = null;
    eE = -1;
  }
  
  public static lhu[] d()
  {
    if (c == null) {}
    synchronized (lyf.a)
    {
      if (c == null) {
        c = new lhu[0];
      }
      return c;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (b != null) {
      paramlxz.a(2, b);
    }
    if (a != null) {
      paramlxz.a(3, a.intValue());
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (b != null) {
      i = j + lxz.b(2, b);
    }
    j = i;
    if (a != null) {
      j = i + lxz.e(3, a.intValue());
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     lhu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */