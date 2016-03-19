public final class ldi
  extends lyb<ldi>
{
  private static volatile ldi[] e;
  public ldf a = null;
  public Long b = null;
  public Float c = null;
  public Float d = null;
  
  public ldi()
  {
    eD = null;
    eE = -1;
  }
  
  public static ldi[] d()
  {
    if (e == null) {}
    synchronized (lyf.a)
    {
      if (e == null) {
        e = new ldi[0];
      }
      return e;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.b(1, a);
    }
    if (b != null) {
      paramlxz.b(2, b.longValue());
    }
    if (d != null) {
      paramlxz.a(3, d.floatValue());
    }
    if (c != null) {
      paramlxz.a(4, c.floatValue());
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
      j = i + lxz.e(2, b.longValue());
    }
    i = j;
    if (d != null)
    {
      d.floatValue();
      i = j + (lxz.f(3) + 4);
    }
    j = i;
    if (c != null)
    {
      c.floatValue();
      j = i + (lxz.f(4) + 4);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     ldi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */