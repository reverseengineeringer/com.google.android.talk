public final class lck
  extends lyb<lck>
{
  public Float a = null;
  public lcr b = null;
  public Float c = null;
  public Float d = null;
  public lcr[] e = lcr.d();
  
  public lck()
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
        lcr locallcr = e[i];
        if (locallcr != null) {
          paramlxz.b(5, locallcr);
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
          lcr locallcr = e[j];
          k = i;
          if (locallcr != null) {
            k = i + lxz.d(5, locallcr);
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
 * Qualified Name:     lck
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */