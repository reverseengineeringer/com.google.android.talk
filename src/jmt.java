public final class jmt
  extends lyb<jmt>
{
  public jpc a = null;
  public jmu b = null;
  public jpc[] c = jpc.d();
  
  public jmt()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.b(1, a);
    }
    if (b != null) {
      paramlxz.b(2, b);
    }
    if ((c != null) && (c.length > 0))
    {
      int i = 0;
      while (i < c.length)
      {
        jpc localjpc = c[i];
        if (localjpc != null) {
          paramlxz.b(3, localjpc);
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
      j = i + lxz.d(1, a);
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
          jpc localjpc = c[j];
          int k = i;
          if (localjpc != null) {
            k = i + lxz.d(3, localjpc);
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
 * Qualified Name:     jmt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */