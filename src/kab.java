public final class kab
  extends lyb<kab>
{
  private static volatile kab[] c;
  public kaa a = null;
  public Boolean b = null;
  
  public kab()
  {
    eD = null;
    eE = -1;
  }
  
  public static kab[] d()
  {
    if (c == null) {}
    synchronized (lyf.a)
    {
      if (c == null) {
        c = new kab[0];
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
      paramlxz.a(2, b.booleanValue());
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
    if (b != null)
    {
      b.booleanValue();
      j = i + (lxz.f(2) + 1);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     kab
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */