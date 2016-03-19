public final class ldu
  extends lyb<ldu>
{
  private static volatile ldu[] e;
  public Integer a = null;
  public ldz b = null;
  public ldv c = null;
  public ldw d = null;
  
  public ldu()
  {
    eD = null;
    eE = -1;
  }
  
  public static ldu[] d()
  {
    if (e == null) {}
    synchronized (lyf.a)
    {
      if (e == null) {
        e = new ldu[0];
      }
      return e;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a.intValue());
    }
    if (b != null) {
      paramlxz.b(2, b);
    }
    if (c != null) {
      paramlxz.b(3, c);
    }
    if (d != null) {
      paramlxz.b(4, d);
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
    if (b != null) {
      j = i + lxz.d(2, b);
    }
    i = j;
    if (c != null) {
      i = j + lxz.d(3, c);
    }
    j = i;
    if (d != null) {
      j = i + lxz.d(4, d);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     ldu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */