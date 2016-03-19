public final class mgh
  extends lyb<mgh>
{
  private static volatile mgh[] d;
  public Integer a = null;
  public Boolean b = null;
  public mgi c = null;
  
  public mgh()
  {
    eD = null;
    eE = -1;
  }
  
  public static mgh[] d()
  {
    if (d == null) {}
    synchronized (lyf.a)
    {
      if (d == null) {
        d = new mgh[0];
      }
      return d;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a.intValue());
    }
    if (b != null) {
      paramlxz.a(2, b.booleanValue());
    }
    if (c != null) {
      paramlxz.b(3, c);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (a != null) {
      i = j + lxz.e(1, a.intValue());
    }
    j = i;
    if (b != null)
    {
      b.booleanValue();
      j = i + (lxz.f(2) + 1);
    }
    i = j;
    if (c != null) {
      i = j + lxz.d(3, c);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     mgh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */