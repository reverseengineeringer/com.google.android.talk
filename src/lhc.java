public final class lhc
  extends lyb<lhc>
{
  private static volatile lhc[] c;
  public Integer a = null;
  public String b = null;
  
  public lhc()
  {
    eD = null;
    eE = -1;
  }
  
  public static lhc[] d()
  {
    if (c == null) {}
    synchronized (lyf.a)
    {
      if (c == null) {
        c = new lhc[0];
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
 * Qualified Name:     lhc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */