public final class jmf
  extends lyb<jmf>
{
  public String a = null;
  public String b = null;
  public Long c = null;
  public jmg[] d = jmg.d();
  
  public jmf()
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
      paramlxz.b(3, c.longValue());
    }
    if ((d != null) && (d.length > 0))
    {
      int i = 0;
      while (i < d.length)
      {
        jmg localjmg = d[i];
        if (localjmg != null) {
          paramlxz.b(4, localjmg);
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
    i = j;
    if (c != null) {
      i = j + lxz.e(3, c.longValue());
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
          jmg localjmg = d[j];
          int k = i;
          if (localjmg != null) {
            k = i + lxz.d(4, localjmg);
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
 * Qualified Name:     jmf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */