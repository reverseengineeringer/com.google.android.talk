public final class lfo
  extends lyb<lfo>
{
  public Double a = null;
  public Double b = null;
  public Double c = null;
  public lfn[] d = lfn.d();
  
  public lfo()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a.doubleValue());
    }
    if (b != null) {
      paramlxz.a(2, b.doubleValue());
    }
    if (c != null) {
      paramlxz.a(3, c.doubleValue());
    }
    if ((d != null) && (d.length > 0))
    {
      int i = 0;
      while (i < d.length)
      {
        lfn locallfn = d[i];
        if (locallfn != null) {
          paramlxz.b(4, locallfn);
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
      a.doubleValue();
      i = j + (lxz.f(1) + 8);
    }
    j = i;
    if (b != null)
    {
      b.doubleValue();
      j = i + (lxz.f(2) + 8);
    }
    i = j;
    if (c != null)
    {
      c.doubleValue();
      i = j + (lxz.f(3) + 8);
    }
    j = i;
    if (d != null)
    {
      j = i;
      if (d.length > 0)
      {
        j = 0;
        while (j < d.length)
        {
          lfn locallfn = d[j];
          int k = i;
          if (locallfn != null) {
            k = i + lxz.d(4, locallfn);
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
 * Qualified Name:     lfo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */