public final class kat
  extends lyb<kat>
{
  public jzh[] a = jzh.d();
  public Boolean b = null;
  public kav c = null;
  public kav d = null;
  public kav e = null;
  public kav f = null;
  public kav g = null;
  public kav h = null;
  public kdp responseHeader = null;
  
  public kat()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (responseHeader != null) {
      paramlxz.b(1, responseHeader);
    }
    if ((a != null) && (a.length > 0))
    {
      int i = 0;
      while (i < a.length)
      {
        jzh localjzh = a[i];
        if (localjzh != null) {
          paramlxz.b(2, localjzh);
        }
        i += 1;
      }
    }
    if (b != null) {
      paramlxz.a(3, b.booleanValue());
    }
    if (d != null) {
      paramlxz.b(4, d);
    }
    if (e != null) {
      paramlxz.b(5, e);
    }
    if (f != null) {
      paramlxz.b(6, f);
    }
    if (g != null) {
      paramlxz.b(7, g);
    }
    if (h != null) {
      paramlxz.b(8, h);
    }
    if (c != null) {
      paramlxz.b(9, c);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (responseHeader != null) {
      i = j + lxz.d(1, responseHeader);
    }
    j = i;
    if (a != null)
    {
      j = i;
      if (a.length > 0)
      {
        j = 0;
        while (j < a.length)
        {
          jzh localjzh = a[j];
          int k = i;
          if (localjzh != null) {
            k = i + lxz.d(2, localjzh);
          }
          j += 1;
          i = k;
        }
        j = i;
      }
    }
    i = j;
    if (b != null)
    {
      b.booleanValue();
      i = j + (lxz.f(3) + 1);
    }
    j = i;
    if (d != null) {
      j = i + lxz.d(4, d);
    }
    i = j;
    if (e != null) {
      i = j + lxz.d(5, e);
    }
    j = i;
    if (f != null) {
      j = i + lxz.d(6, f);
    }
    i = j;
    if (g != null) {
      i = j + lxz.d(7, g);
    }
    j = i;
    if (h != null) {
      j = i + lxz.d(8, h);
    }
    i = j;
    if (c != null) {
      i = j + lxz.d(9, c);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     kat
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */