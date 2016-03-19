public final class kgb
  extends lyb<kgb>
{
  private static volatile kgb[] c;
  public kcr a = null;
  public Long b = null;
  
  public kgb()
  {
    eD = null;
    eE = -1;
  }
  
  public static kgb[] d()
  {
    if (c == null) {}
    synchronized (lyf.a)
    {
      if (c == null) {
        c = new kgb[0];
      }
      return c;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.b(1, a);
    }
    if (b != null) {
      paramlxz.a(2, b.longValue());
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (a != null) {
      i = j + lxz.d(1, a);
    }
    j = i;
    if (b != null) {
      j = i + lxz.d(2, b.longValue());
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     kgb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */