public final class kje
  extends lyb<kje>
{
  public Integer a = null;
  public kjt b = null;
  public kjf[] c = kjf.d();
  
  public kje()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a.intValue());
    }
    if (b != null) {
      paramlxz.b(2, b);
    }
    if ((c != null) && (c.length > 0))
    {
      int i = 0;
      while (i < c.length)
      {
        kjf localkjf = c[i];
        if (localkjf != null) {
          paramlxz.b(3, localkjf);
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
      j = i + lxz.e(1, a.intValue());
    }
    i = j;
    if (b != null) {
      i = j + lxz.d(2, b);
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
          kjf localkjf = c[j];
          int k = i;
          if (localkjf != null) {
            k = i + lxz.d(3, localkjf);
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
 * Qualified Name:     kje
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */