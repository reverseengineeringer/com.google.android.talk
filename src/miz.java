public final class miz
  extends lyb<miz>
{
  private static volatile miz[] c;
  public String a = null;
  public String b = null;
  
  public miz()
  {
    eD = null;
    eE = -1;
  }
  
  public static miz[] d()
  {
    if (c == null) {}
    synchronized (lyf.a)
    {
      if (c == null) {
        c = new miz[0];
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
      paramlxz.a(2, b);
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
      j = i + lxz.b(2, b);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     miz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */