public final class jur
  extends lyb<jur>
{
  public String a = null;
  public String b = null;
  public Integer c = null;
  public Integer d = null;
  public jus[] e = jus.d();
  
  public jur()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a);
    }
    if (b != null) {
      paramlxz.a(2, b);
    }
    if (c != null) {
      paramlxz.a(3, c.intValue());
    }
    if (d != null) {
      paramlxz.a(4, d.intValue());
    }
    if ((e != null) && (e.length > 0))
    {
      int i = 0;
      while (i < e.length)
      {
        jus localjus = e[i];
        if (localjus != null) {
          paramlxz.a(5, localjus);
        }
        i += 1;
      }
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
    if (b != null) {
      j = i + lxz.b(2, b);
    }
    int k = j;
    if (c != null) {
      k = j + lxz.e(3, c.intValue());
    }
    i = k;
    if (d != null) {
      i = k + lxz.e(4, d.intValue());
    }
    j = i;
    if (e != null)
    {
      j = i;
      if (e.length > 0)
      {
        j = 0;
        while (j < e.length)
        {
          jus localjus = e[j];
          k = i;
          if (localjus != null) {
            k = i + lxz.c(5, localjus);
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
 * Qualified Name:     jur
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */