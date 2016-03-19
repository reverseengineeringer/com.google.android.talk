public final class leo
  extends lyb<leo>
{
  private static volatile leo[] f;
  public Float a = null;
  public Float b = null;
  public Float c = null;
  public Float d = null;
  public Float e = null;
  
  public leo()
  {
    eD = null;
    eE = -1;
  }
  
  public static leo[] d()
  {
    if (f == null) {}
    synchronized (lyf.a)
    {
      if (f == null) {
        f = new leo[0];
      }
      return f;
    }
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a.floatValue());
    }
    if (b != null) {
      paramlxz.a(2, b.floatValue());
    }
    if (c != null) {
      paramlxz.a(3, c.floatValue());
    }
    if (d != null) {
      paramlxz.a(4, d.floatValue());
    }
    if (e != null) {
      paramlxz.a(5, e.floatValue());
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (a != null)
    {
      a.floatValue();
      i = j + (lxz.f(1) + 4);
    }
    j = i;
    if (b != null)
    {
      b.floatValue();
      j = i + (lxz.f(2) + 4);
    }
    i = j;
    if (c != null)
    {
      c.floatValue();
      i = j + (lxz.f(3) + 4);
    }
    j = i;
    if (d != null)
    {
      d.floatValue();
      j = i + (lxz.f(4) + 4);
    }
    i = j;
    if (e != null)
    {
      e.floatValue();
      i = j + (lxz.f(5) + 4);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     leo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */