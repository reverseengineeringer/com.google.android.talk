public final class mfy
  extends lyb<mfy>
{
  private static volatile mfy[] c;
  public String a = null;
  public String b = null;
  
  public mfy()
  {
    eD = null;
    eE = -1;
  }
  
  public static mfy[] d()
  {
    if (c == null) {}
    synchronized (lyf.a)
    {
      if (c == null) {
        c = new mfy[0];
      }
      return c;
    }
  }
  
  public void a(lxz paramlxz)
  {
    paramlxz.a(1, a);
    if (b != null) {
      paramlxz.a(2, b);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b() + lxz.b(1, a);
    int i = j;
    if (b != null) {
      i = j + lxz.b(2, b);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     mfy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */