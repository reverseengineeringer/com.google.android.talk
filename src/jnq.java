public final class jnq
  extends lyb<jnq>
{
  public String a = null;
  public jpc[] b = jpc.d();
  public mdv c = null;
  public Long d = null;
  public String e = null;
  
  public jnq()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a);
    }
    if ((b != null) && (b.length > 0))
    {
      int i = 0;
      while (i < b.length)
      {
        jpc localjpc = b[i];
        if (localjpc != null) {
          paramlxz.b(2, localjpc);
        }
        i += 1;
      }
    }
    if (c != null) {
      paramlxz.b(3, c);
    }
    if (d != null) {
      paramlxz.b(4, d.longValue());
    }
    if (e != null) {
      paramlxz.a(5, e);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (a != null) {
      i = j + lxz.b(1, a);
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
            k = i + lxz.d(2, localjpc);
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
    if (d != null) {
      j = i + lxz.e(4, d.longValue());
    }
    i = j;
    if (e != null) {
      i = j + lxz.b(5, e);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     jnq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */