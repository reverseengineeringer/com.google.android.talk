public final class jkg
  extends lyb<jkg>
{
  public jkc a = null;
  public String b = null;
  public String c = null;
  public jjl[] d = jjl.d();
  
  public jkg()
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
      paramlxz.a(2, b);
    }
    if (c != null) {
      paramlxz.a(3, c);
    }
    if ((d != null) && (d.length > 0))
    {
      int i = 0;
      while (i < d.length)
      {
        jjl localjjl = d[i];
        if (localjjl != null) {
          paramlxz.b(4, localjjl);
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
      i = j + lxz.d(1, a);
    }
    j = i;
    if (b != null) {
      j = i + lxz.b(2, b);
    }
    i = j;
    if (c != null) {
      i = j + lxz.b(3, c);
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
          jjl localjjl = d[j];
          int k = i;
          if (localjjl != null) {
            k = i + lxz.d(4, localjjl);
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
 * Qualified Name:     jkg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */