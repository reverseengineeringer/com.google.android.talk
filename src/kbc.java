public final class kbc
  extends lyb<kbc>
{
  public Integer a = null;
  public Long b = null;
  public jyk[] c = jyk.d();
  
  public kbc()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.c(1, a.intValue());
    }
    if (b != null) {
      paramlxz.a(2, b.longValue());
    }
    if ((c != null) && (c.length > 0))
    {
      int i = 0;
      while (i < c.length)
      {
        jyk localjyk = c[i];
        if (localjyk != null) {
          paramlxz.b(3, localjyk);
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
      j = i + lxz.f(1, a.intValue());
    }
    i = j;
    if (b != null) {
      i = j + lxz.d(2, b.longValue());
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
          jyk localjyk = c[j];
          int k = i;
          if (localjyk != null) {
            k = i + lxz.d(3, localjyk);
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
 * Qualified Name:     kbc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */