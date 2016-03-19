public final class jve
  extends lyb<jve>
{
  public Integer a = null;
  public Integer b = null;
  public jvf[] c = jvf.d();
  
  public jve()
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
      paramlxz.a(2, b.intValue());
    }
    if ((c != null) && (c.length > 0))
    {
      int i = 0;
      while (i < c.length)
      {
        jvf localjvf = c[i];
        if (localjvf != null) {
          paramlxz.b(3, localjvf);
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
          jvf localjvf = c[j];
          int k = i;
          if (localjvf != null) {
            k = i + lxz.d(3, localjvf);
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
 * Qualified Name:     jve
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */