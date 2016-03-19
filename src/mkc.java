public final class mkc
  extends lyb<mkc>
{
  public mmm a = null;
  public mkd[] b = mkd.d();
  public mks c = null;
  public int[] d = lyo.a;
  public Integer e = null;
  
  public mkc()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    int j = 0;
    if (a != null) {
      paramlxz.b(1, a);
    }
    int i;
    if ((b != null) && (b.length > 0))
    {
      i = 0;
      while (i < b.length)
      {
        mkd localmkd = b[i];
        if (localmkd != null) {
          paramlxz.b(2, localmkd);
        }
        i += 1;
      }
    }
    if (c != null) {
      paramlxz.b(3, c);
    }
    if ((d != null) && (d.length > 0))
    {
      i = j;
      while (i < d.length)
      {
        paramlxz.a(4, d[i]);
        i += 1;
      }
    }
    if (e != null) {
      paramlxz.a(5, e.intValue());
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int m = 0;
    int j = super.b();
    int i = j;
    if (a != null) {
      i = j + lxz.d(1, a);
    }
    j = i;
    int k;
    if (b != null)
    {
      j = i;
      if (b.length > 0)
      {
        j = 0;
        while (j < b.length)
        {
          mkd localmkd = b[j];
          k = i;
          if (localmkd != null) {
            k = i + lxz.d(2, localmkd);
          }
          j += 1;
          i = k;
        }
        j = i;
      }
    }
    i = j;
    if (c != null) {
      i = j + lxz.d(3, c);
    }
    j = i;
    if (d != null)
    {
      j = i;
      if (d.length > 0)
      {
        k = 0;
        j = m;
        while (j < d.length)
        {
          k += lxz.e(d[j]);
          j += 1;
        }
        j = i + k + d.length * 1;
      }
    }
    i = j;
    if (e != null) {
      i = j + lxz.e(5, e.intValue());
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     mkc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */