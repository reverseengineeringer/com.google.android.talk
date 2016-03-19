public final class jut
  extends lyb<jut>
{
  public juu[] a = juu.d();
  public Integer b = null;
  public Integer c = null;
  public Integer d = null;
  public jum e = null;
  
  public jut()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if ((a != null) && (a.length > 0))
    {
      int i = 0;
      while (i < a.length)
      {
        juu localjuu = a[i];
        if (localjuu != null) {
          paramlxz.a(1, localjuu);
        }
        i += 1;
      }
    }
    if (b != null) {
      paramlxz.a(15, b.intValue());
    }
    if (c != null) {
      paramlxz.a(16, c.intValue());
    }
    if (d != null) {
      paramlxz.a(17, d.intValue());
    }
    if (e != null) {
      paramlxz.b(18, e);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i = super.b();
    int j = i;
    if (a != null)
    {
      j = i;
      if (a.length > 0)
      {
        int k = 0;
        for (;;)
        {
          j = i;
          if (k >= a.length) {
            break;
          }
          juu localjuu = a[k];
          j = i;
          if (localjuu != null) {
            j = i + lxz.c(1, localjuu);
          }
          k += 1;
          i = j;
        }
      }
    }
    i = j;
    if (b != null) {
      i = j + lxz.e(15, b.intValue());
    }
    j = i;
    if (c != null) {
      j = i + lxz.e(16, c.intValue());
    }
    i = j;
    if (d != null) {
      i = j + lxz.e(17, d.intValue());
    }
    j = i;
    if (e != null) {
      j = i + lxz.d(18, e);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     jut
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */