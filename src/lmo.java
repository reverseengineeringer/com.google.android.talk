public final class lmo
  extends lyb<lmo>
{
  private static volatile lmo[] c;
  public String a = null;
  public lmp b = null;
  
  public lmo()
  {
    eD = null;
    eE = -1;
  }
  
  public static lmo[] d()
  {
    if (c == null) {}
    synchronized (lyf.a)
    {
      if (c == null) {
        c = new lmo[0];
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
 * Qualified Name:     lmo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */