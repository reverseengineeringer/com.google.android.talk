public final class jby
  extends lyb<jby>
{
  public jbn a = null;
  public jbz[] b = jbz.d();
  public String c = null;
  public String d = null;
  public jbz e = null;
  public String f = null;
  public String g = null;
  
  public jby()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.b(1, a);
    }
    if ((b != null) && (b.length > 0))
    {
      int i = 0;
      while (i < b.length)
      {
        jbz localjbz = b[i];
        if (localjbz != null) {
          paramlxz.b(2, localjbz);
        }
        i += 1;
      }
    }
    if (c != null) {
      paramlxz.a(3, c);
    }
    if (d != null) {
      paramlxz.a(4, d);
    }
    if (e != null) {
      paramlxz.b(5, e);
    }
    if (f != null) {
      paramlxz.a(6, f);
    }
    if (g != null) {
      paramlxz.a(7, g);
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
    if (b != null)
    {
      j = i;
      if (b.length > 0)
      {
        j = 0;
        while (j < b.length)
        {
          jbz localjbz = b[j];
          int k = i;
          if (localjbz != null) {
            k = i + lxz.d(2, localjbz);
          }
          j += 1;
          i = k;
        }
        j = i;
      }
    }
    i = j;
    if (c != null) {
      i = j + lxz.b(3, c);
    }
    j = i;
    if (d != null) {
      j = i + lxz.b(4, d);
    }
    i = j;
    if (e != null) {
      i = j + lxz.d(5, e);
    }
    j = i;
    if (f != null) {
      j = i + lxz.b(6, f);
    }
    i = j;
    if (g != null) {
      i = j + lxz.b(7, g);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     jby
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */