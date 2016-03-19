public final class kie
  extends lyb<kie>
{
  private static volatile kie[] c;
  public String a = null;
  public Integer b = null;
  
  public kie()
  {
    eD = null;
    eE = -1;
  }
  
  public static kie[] d()
  {
    if (c == null) {}
    synchronized (lyf.a)
    {
      if (c == null) {
        c = new kie[0];
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
      paramlxz.a(2, b.intValue());
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
      j = i + lxz.e(2, b.intValue());
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     kie
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */