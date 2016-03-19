public final class jup
  extends lyb<jup>
{
  private static volatile jup[] e;
  public String a = null;
  public String b = null;
  public int[] c = lyo.a;
  public int[] d = lyo.a;
  
  public jup()
  {
    eD = null;
    eE = -1;
  }
  
  public static jup[] d()
  {
    if (e == null) {}
    synchronized (lyf.a)
    {
      if (e == null) {
        e = new jup[0];
      }
      return e;
    }
  }
  
  public void a(lxz paramlxz)
  {
    int j = 0;
    if (a != null) {
      paramlxz.a(1, a);
    }
    if (b != null) {
      paramlxz.a(2, b);
    }
    int i;
    if ((c != null) && (c.length > 0))
    {
      i = 0;
      while (i < c.length)
      {
        paramlxz.b(3, c[i]);
        i += 1;
      }
    }
    if ((d != null) && (d.length > 0))
    {
      i = j;
      while (i < d.length)
      {
        paramlxz.b(4, d[i]);
        i += 1;
      }
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
    if (c != null)
    {
      i = j;
      if (c.length > 0) {
        i = j + c.length * 4 + c.length * 1;
      }
    }
    j = i;
    if (d != null)
    {
      j = i;
      if (d.length > 0) {
        j = i + d.length * 4 + d.length * 1;
      }
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     jup
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */