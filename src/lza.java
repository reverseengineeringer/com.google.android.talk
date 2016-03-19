public final class lza
  extends lyb<lza>
{
  private static volatile lza[] c;
  public String a = null;
  public msu b = null;
  
  public lza()
  {
    eD = null;
    eE = -1;
  }
  
  public static lza[] d()
  {
    if (c == null) {}
    synchronized (lyf.a)
    {
      if (c == null) {
        c = new lza[0];
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
 * Qualified Name:     lza
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */