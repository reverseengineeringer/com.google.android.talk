public final class mlo
  extends lyb<mlo>
{
  private static volatile mlo[] d;
  public String a = null;
  public String b = null;
  public String c = null;
  
  public mlo()
  {
    eD = null;
    eE = -1;
  }
  
  public static mlo[] d()
  {
    if (d == null) {}
    synchronized (lyf.a)
    {
      if (d == null) {
        d = new mlo[0];
      }
      return d;
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
    if (c != null) {
      paramlxz.a(3, c);
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
    i = j;
    if (c != null) {
      i = j + lxz.b(3, c);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     mlo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */