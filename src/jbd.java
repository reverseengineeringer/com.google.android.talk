public final class jbd
  extends lyb<jbd>
{
  private static volatile jbd[] c;
  public String a = null;
  public jbe b = null;
  
  public jbd()
  {
    eD = null;
    eE = -1;
  }
  
  public static jbd[] d()
  {
    if (c == null) {}
    synchronized (lyf.a)
    {
      if (c == null) {
        c = new jbd[0];
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
      paramlxz.b(2, b);
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
      j = i + lxz.d(2, b);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     jbd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */