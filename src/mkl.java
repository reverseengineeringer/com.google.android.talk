public final class mkl
  extends lyb<mkl>
{
  public mkk[] a = mkk.d();
  public mkk[] b = mkk.d();
  public String c = null;
  
  public mkl()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    int j = 0;
    int i;
    mkk localmkk;
    if ((a != null) && (a.length > 0))
    {
      i = 0;
      while (i < a.length)
      {
        localmkk = a[i];
        if (localmkk != null) {
          paramlxz.b(1, localmkk);
        }
        i += 1;
      }
    }
    if ((b != null) && (b.length > 0))
    {
      i = j;
      while (i < b.length)
      {
        localmkk = b[i];
        if (localmkk != null) {
          paramlxz.b(2, localmkk);
        }
        i += 1;
      }
    }
    if (c != null) {
      paramlxz.a(3, c);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int m = 0;
    int j = super.b();
    int i = j;
    mkk localmkk;
    int k;
    if (a != null)
    {
      i = j;
      if (a.length > 0)
      {
        i = j;
        j = 0;
        while (j < a.length)
        {
          localmkk = a[j];
          k = i;
          if (localmkk != null) {
            k = i + lxz.d(1, localmkk);
          }
          j += 1;
          i = k;
        }
      }
    }
    j = i;
    if (b != null)
    {
      j = i;
      if (b.length > 0)
      {
        k = m;
        for (;;)
        {
          j = i;
          if (k >= b.length) {
            break;
          }
          localmkk = b[k];
          j = i;
          if (localmkk != null) {
            j = i + lxz.d(2, localmkk);
          }
          k += 1;
          i = j;
        }
      }
    }
    i = j;
    if (c != null) {
      i = j + lxz.b(3, c);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     mkl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */