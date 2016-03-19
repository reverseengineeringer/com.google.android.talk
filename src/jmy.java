public final class jmy
  extends lyb<jmy>
{
  public jpc a = null;
  public jpc[] b = jpc.d();
  public jmu c = null;
  
  public jmy()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.b(4, a);
    }
    if ((b != null) && (b.length > 0))
    {
      int i = 0;
      while (i < b.length)
      {
        jpc localjpc = b[i];
        if (localjpc != null) {
          paramlxz.b(5, localjpc);
        }
        i += 1;
      }
    }
    if (c != null) {
      paramlxz.b(6, c);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (a != null) {
      i = j + lxz.d(4, a);
    }
    j = i;
    if (b != null)
    {
      j = i;
      if (b.length > 0)
      {
        j = 0;
        while (j < b.length)
        {
          jpc localjpc = b[j];
          int k = i;
          if (localjpc != null) {
            k = i + lxz.d(5, localjpc);
          }
          j += 1;
          i = k;
        }
        j = i;
      }
    }
    i = j;
    if (c != null) {
      i = j + lxz.d(6, c);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     jmy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */