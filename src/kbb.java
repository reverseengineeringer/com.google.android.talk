public final class kbb
  extends lyb<kbb>
{
  private static volatile kbb[] d;
  public jxj a = null;
  public Integer b = null;
  public Long c = null;
  
  public kbb()
  {
    eD = null;
    eE = -1;
  }
  
  public static kbb[] d()
  {
    if (d == null) {}
    synchronized (lyf.a)
    {
      if (d == null) {
        d = new kbb[0];
      }
      return d;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.b(1, a);
    }
    if (b != null) {
      paramlxz.a(2, b.intValue());
    }
    if (c != null) {
      paramlxz.a(3, c.longValue());
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
      j = i + lxz.e(2, b.intValue());
    }
    i = j;
    if (c != null) {
      i = j + lxz.d(3, c.longValue());
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     kbb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */