public final class lru
  extends lyb<lru>
{
  private static volatile lru[] d;
  public String a = null;
  public String b = null;
  public int c = Integer.MIN_VALUE;
  
  public lru()
  {
    eD = null;
    eE = -1;
  }
  
  public static lru[] d()
  {
    if (d == null) {}
    synchronized (lyf.a)
    {
      if (d == null) {
        d = new lru[0];
      }
      return d;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a);
    }
    if (b != null) {
      paramlxz.a(2, b);
    }
    if (c != Integer.MIN_VALUE) {
      paramlxz.a(3, c);
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
      j = i + lxz.b(2, b);
    }
    i = j;
    if (c != Integer.MIN_VALUE) {
      i = j + lxz.e(3, c);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     lru
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */