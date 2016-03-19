public final class jpj
  extends lyb<jpj>
{
  private static volatile jpj[] d;
  public Integer a = null;
  public jpk b = null;
  public meu c = null;
  
  public jpj()
  {
    eD = null;
    eE = -1;
  }
  
  public static jpj[] d()
  {
    if (d == null) {}
    synchronized (lyf.a)
    {
      if (d == null) {
        d = new jpj[0];
      }
      return d;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a.intValue());
    }
    if (c != null) {
      paramlxz.b(3, c);
    }
    if (b != null) {
      paramlxz.b(6, b);
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
    if (c != null) {
      j = i + lxz.d(3, c);
    }
    i = j;
    if (b != null) {
      i = j + lxz.d(6, b);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     jpj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */