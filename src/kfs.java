public final class kfs
  extends lyb<kfs>
{
  private static volatile kfs[] c;
  public jxw a = null;
  public Long b = null;
  
  public kfs()
  {
    eD = null;
    eE = -1;
  }
  
  public static kfs[] d()
  {
    if (c == null) {}
    synchronized (lyf.a)
    {
      if (c == null) {
        c = new kfs[0];
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
 * Qualified Name:     kfs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */