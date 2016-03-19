public final class ldn
  extends lyb<ldn>
{
  private static volatile ldn[] e;
  public String a = null;
  public Long b = null;
  public String c = null;
  public Long d = null;
  
  public ldn()
  {
    eD = null;
    eE = -1;
  }
  
  public static ldn[] d()
  {
    if (e == null) {}
    synchronized (lyf.a)
    {
      if (e == null) {
        e = new ldn[0];
      }
      return e;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a);
    }
    if (b != null) {
      paramlxz.c(2, b.longValue());
    }
    if (d != null) {
      paramlxz.b(3, d.longValue());
    }
    if (c != null) {
      paramlxz.a(4, c);
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
    if (b != null)
    {
      b.longValue();
      j = i + (lxz.f(2) + 8);
    }
    i = j;
    if (d != null) {
      i = j + lxz.e(3, d.longValue());
    }
    j = i;
    if (c != null) {
      j = i + lxz.b(4, c);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     ldn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */