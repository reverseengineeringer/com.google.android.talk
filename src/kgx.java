public final class kgx
  extends lyb<kgx>
{
  private static volatile kgx[] c;
  public String a = null;
  public Float b = null;
  
  public kgx()
  {
    eD = null;
    eE = -1;
  }
  
  public static kgx[] d()
  {
    if (c == null) {}
    synchronized (lyf.a)
    {
      if (c == null) {
        c = new kgx[0];
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
      paramlxz.a(2, b.floatValue());
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
      b.floatValue();
      j = i + (lxz.f(2) + 4);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     kgx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */