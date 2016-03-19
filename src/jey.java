public final class jey
  extends lyb<jey>
{
  private static volatile jey[] b;
  public String a = null;
  
  public jey()
  {
    eD = null;
    eE = -1;
  }
  
  public static jey[] d()
  {
    if (b == null) {}
    synchronized (lyf.a)
    {
      if (b == null) {
        b = new jey[0];
      }
      return b;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a);
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
    return i;
  }
}

/* Location:
 * Qualified Name:     jey
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */