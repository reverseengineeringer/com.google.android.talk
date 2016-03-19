public final class kax
  extends lyb<kax>
{
  private static volatile kax[] c;
  public kzq a = null;
  public kay b = null;
  
  public kax()
  {
    eD = null;
    eE = -1;
  }
  
  public static kax[] d()
  {
    if (c == null) {}
    synchronized (lyf.a)
    {
      if (c == null) {
        c = new kax[0];
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
      paramlxz.b(2, b);
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
    return j;
  }
}

/* Location:
 * Qualified Name:     kax
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */