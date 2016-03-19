public final class lnz
  extends lyb<lnz>
{
  private static volatile lnz[] e;
  public lmf a = null;
  public lmm b = null;
  public Float c = null;
  public Float d = null;
  
  public lnz()
  {
    eD = null;
    eE = -1;
  }
  
  public static lnz[] d()
  {
    if (e == null) {}
    synchronized (lyf.a)
    {
      if (e == null) {
        e = new lnz[0];
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
      paramlxz.b(2, b);
    }
    if (c != null) {
      paramlxz.a(3, c.floatValue());
    }
    if (d != null) {
      paramlxz.a(4, d.floatValue());
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
      j = i + lxz.d(2, b);
    }
    i = j;
    if (c != null)
    {
      c.floatValue();
      i = j + (lxz.f(3) + 4);
    }
    j = i;
    if (d != null)
    {
      d.floatValue();
      j = i + (lxz.f(4) + 4);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     lnz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */