public final class jod
  extends lyb<jod>
{
  private static volatile jod[] f;
  public Integer a = null;
  public int[] b = lyo.a;
  public Boolean c = null;
  public Boolean d = null;
  public Boolean e = null;
  
  public jod()
  {
    eD = null;
    eE = -1;
  }
  
  public static jod[] d()
  {
    if (f == null) {}
    synchronized (lyf.a)
    {
      if (f == null) {
        f = new jod[0];
      }
      return f;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if ((b != null) && (b.length > 0))
    {
      int i = 0;
      while (i < b.length)
      {
        paramlxz.a(1, b[i]);
        i += 1;
      }
    }
    if (c != null) {
      paramlxz.a(2, c.booleanValue());
    }
    if (d != null) {
      paramlxz.a(3, d.booleanValue());
    }
    if (a != null) {
      paramlxz.a(4, a.intValue());
    }
    if (e != null) {
      paramlxz.a(5, e.booleanValue());
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i = 0;
    int k = super.b();
    if ((b != null) && (b.length > 0))
    {
      j = 0;
      while (i < b.length)
      {
        j += lxz.e(b[i]);
        i += 1;
      }
    }
    for (int j = k + j + b.length * 1;; j = k)
    {
      i = j;
      if (c != null)
      {
        c.booleanValue();
        i = j + (lxz.f(2) + 1);
      }
      j = i;
      if (d != null)
      {
        d.booleanValue();
        j = i + (lxz.f(3) + 1);
      }
      i = j;
      if (a != null) {
        i = j + lxz.e(4, a.intValue());
      }
      j = i;
      if (e != null)
      {
        e.booleanValue();
        j = i + (lxz.f(5) + 1);
      }
      return j;
    }
  }
}

/* Location:
 * Qualified Name:     jod
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */