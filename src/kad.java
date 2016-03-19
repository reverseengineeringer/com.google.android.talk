public final class kad
  extends lyb<kad>
{
  public lcf a = null;
  public String b = null;
  public Boolean c = null;
  public lcf[] d = lcf.d();
  public kcu e = null;
  public kdo requestHeader = null;
  
  public kad()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (requestHeader != null) {
      paramlxz.b(1, requestHeader);
    }
    if (a != null) {
      paramlxz.b(2, a);
    }
    if (b != null) {
      paramlxz.a(3, b);
    }
    if (c != null) {
      paramlxz.a(4, c.booleanValue());
    }
    if ((d != null) && (d.length > 0))
    {
      int i = 0;
      while (i < d.length)
      {
        lcf locallcf = d[i];
        if (locallcf != null) {
          paramlxz.b(5, locallcf);
        }
        i += 1;
      }
    }
    if (e != null) {
      paramlxz.b(6, e);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (requestHeader != null) {
      i = j + lxz.d(1, requestHeader);
    }
    j = i;
    if (a != null) {
      j = i + lxz.d(2, a);
    }
    int k = j;
    if (b != null) {
      k = j + lxz.b(3, b);
    }
    i = k;
    if (c != null)
    {
      c.booleanValue();
      i = k + (lxz.f(4) + 1);
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
          lcf locallcf = d[j];
          k = i;
          if (locallcf != null) {
            k = i + lxz.d(5, locallcf);
          }
          j += 1;
          i = k;
        }
        j = i;
      }
    }
    i = j;
    if (e != null) {
      i = j + lxz.d(6, e);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     kad
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */