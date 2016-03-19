public final class lcm
  extends lyb<lcm>
{
  public Float a = null;
  public lco b = null;
  public Float c = null;
  public Float d = null;
  public lco[] e = lco.d();
  
  public lcm()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a.floatValue());
    }
    if (b != null) {
      paramlxz.b(2, b);
    }
    if (c != null) {
      paramlxz.a(3, c.floatValue());
    }
    if (d != null) {
      paramlxz.a(4, d.floatValue());
    }
    if ((e != null) && (e.length > 0))
    {
      int i = 0;
      while (i < e.length)
      {
        lco locallco = e[i];
        if (locallco != null) {
          paramlxz.b(5, locallco);
        }
        i += 1;
      }
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
    if (b != null) {
      j = i + lxz.d(2, b);
    }
    int k = j;
    if (c != null)
    {
      c.floatValue();
      k = j + (lxz.f(3) + 4);
    }
    i = k;
    if (d != null)
    {
      d.floatValue();
      i = k + (lxz.f(4) + 4);
    }
    j = i;
    if (e != null)
    {
      j = i;
      if (e.length > 0)
      {
        j = 0;
        while (j < e.length)
        {
          lco locallco = e[j];
          k = i;
          if (locallco != null) {
            k = i + lxz.d(5, locallco);
          }
          j += 1;
          i = k;
        }
        j = i;
      }
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     lcm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */