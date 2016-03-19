public final class mad
  extends lyb<mad>
{
  private static volatile mad[] h;
  public Integer a = null;
  public Integer b = null;
  public mac[] c = mac.d();
  public Boolean d = null;
  public Integer e = null;
  public String f = null;
  public Boolean g = null;
  
  public mad()
  {
    eD = null;
    eE = -1;
  }
  
  public static mad[] d()
  {
    if (h == null) {}
    synchronized (lyf.a)
    {
      if (h == null) {
        h = new mad[0];
      }
      return h;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a.intValue());
    }
    if (b != null) {
      paramlxz.a(2, b.intValue());
    }
    if ((c != null) && (c.length > 0))
    {
      int i = 0;
      while (i < c.length)
      {
        mac localmac = c[i];
        if (localmac != null) {
          paramlxz.b(3, localmac);
        }
        i += 1;
      }
    }
    if (d != null) {
      paramlxz.a(4, d.booleanValue());
    }
    if (e != null) {
      paramlxz.a(5, e.intValue());
    }
    if (f != null) {
      paramlxz.a(6, f);
    }
    if (g != null) {
      paramlxz.a(7, g.booleanValue());
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i = super.b();
    int j = i;
    if (a != null) {
      j = i + lxz.e(1, a.intValue());
    }
    i = j;
    if (b != null) {
      i = j + lxz.e(2, b.intValue());
    }
    j = i;
    if (c != null)
    {
      j = i;
      if (c.length > 0)
      {
        j = 0;
        while (j < c.length)
        {
          mac localmac = c[j];
          int k = i;
          if (localmac != null) {
            k = i + lxz.d(3, localmac);
          }
          j += 1;
          i = k;
        }
        j = i;
      }
    }
    i = j;
    if (d != null)
    {
      d.booleanValue();
      i = j + (lxz.f(4) + 1);
    }
    j = i;
    if (e != null) {
      j = i + lxz.e(5, e.intValue());
    }
    i = j;
    if (f != null) {
      i = j + lxz.b(6, f);
    }
    j = i;
    if (g != null)
    {
      g.booleanValue();
      j = i + (lxz.f(7) + 1);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     mad
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */