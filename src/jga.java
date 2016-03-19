public final class jga
  extends lyb<jga>
{
  private static volatile jga[] f;
  public String a = null;
  public String b = null;
  public Boolean c = null;
  public Boolean d = null;
  public Boolean e = null;
  
  public jga()
  {
    eD = null;
    eE = -1;
  }
  
  public static jga[] d()
  {
    if (f == null) {}
    synchronized (lyf.a)
    {
      if (f == null) {
        f = new jga[0];
      }
      return f;
    }
  }
  
  public void a(lxz paramlxz)
  {
    paramlxz.a(1, a);
    paramlxz.a(2, b);
    if (c != null) {
      paramlxz.a(3, c.booleanValue());
    }
    if (d != null) {
      paramlxz.a(4, d.booleanValue());
    }
    if (e != null) {
      paramlxz.a(5, e.booleanValue());
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b() + lxz.b(1, a) + lxz.b(2, b);
    int i = j;
    if (c != null)
    {
      c.booleanValue();
      i = j + (lxz.f(3) + 1);
    }
    j = i;
    if (d != null)
    {
      d.booleanValue();
      j = i + (lxz.f(4) + 1);
    }
    i = j;
    if (e != null)
    {
      e.booleanValue();
      i = j + (lxz.f(5) + 1);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     jga
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */