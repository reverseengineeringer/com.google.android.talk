public final class lua
  extends lyb<lua>
{
  private static volatile lua[] c;
  public String a = null;
  public lub b = null;
  
  public lua()
  {
    eD = null;
    eE = -1;
  }
  
  public static lua[] d()
  {
    if (c == null) {}
    synchronized (lyf.a)
    {
      if (c == null) {
        c = new lua[0];
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
 * Qualified Name:     lua
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */