public final class jco
  extends lyb<jco>
{
  private static volatile jco[] d;
  public jcn a = null;
  public jcn b = null;
  public Boolean c = null;
  
  public jco()
  {
    eD = null;
    eE = -1;
  }
  
  public static jco[] d()
  {
    if (d == null) {}
    synchronized (lyf.a)
    {
      if (d == null) {
        d = new jco[0];
      }
      return d;
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
      paramlxz.a(3, c.booleanValue());
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
      c.booleanValue();
      i = j + (lxz.f(3) + 1);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     jco
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */