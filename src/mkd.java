public final class mkd
  extends lyb<mkd>
{
  private static volatile mkd[] e;
  public String a = null;
  public mks b = null;
  public String c = null;
  public String d = null;
  
  public mkd()
  {
    eD = null;
    eE = -1;
  }
  
  public static mkd[] d()
  {
    if (e == null) {}
    synchronized (lyf.a)
    {
      if (e == null) {
        e = new mkd[0];
      }
      return e;
    }
  }
  
  public void a(lxz paramlxz)
  {
    paramlxz.a(1, a);
    if (b != null) {
      paramlxz.b(2, b);
    }
    if (c != null) {
      paramlxz.a(3, c);
    }
    if (d != null) {
      paramlxz.a(4, d);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b() + lxz.b(1, a);
    int i = j;
    if (b != null) {
      i = j + lxz.d(2, b);
    }
    j = i;
    if (c != null) {
      j = i + lxz.b(3, c);
    }
    i = j;
    if (d != null) {
      i = j + lxz.b(4, d);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     mkd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */