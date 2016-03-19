public final class ljb
  extends lyb<ljb>
{
  public String a = null;
  public Integer b = null;
  public ljc[] c = ljc.d();
  
  public ljb()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a);
    }
    if (b != null) {
      paramlxz.a(2, b.intValue());
    }
    if ((c != null) && (c.length > 0))
    {
      int i = 0;
      while (i < c.length)
      {
        ljc localljc = c[i];
        if (localljc != null) {
          paramlxz.b(3, localljc);
        }
        i += 1;
      }
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i = super.b();
    int j = i;
    if (a != null) {
      j = i + lxz.b(1, a);
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
          ljc localljc = c[j];
          int k = i;
          if (localljc != null) {
            k = i + lxz.d(3, localljc);
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
 * Qualified Name:     ljb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */