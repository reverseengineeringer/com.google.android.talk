public final class kaw
  extends lyb<kaw>
{
  public Integer a = null;
  public kcr[] b = kcr.d();
  public Long c = null;
  public jxw d = null;
  public Long e = null;
  public Boolean f = null;
  public Integer g = null;
  
  public kaw()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a.intValue());
    }
    if ((b != null) && (b.length > 0))
    {
      int i = 0;
      while (i < b.length)
      {
        kcr localkcr = b[i];
        if (localkcr != null) {
          paramlxz.b(2, localkcr);
        }
        i += 1;
      }
    }
    if (c != null) {
      paramlxz.b(3, c.longValue());
    }
    if (d != null) {
      paramlxz.b(4, d);
    }
    if (e != null) {
      paramlxz.b(5, e.longValue());
    }
    if (f != null) {
      paramlxz.a(6, f.booleanValue());
    }
    if (g != null) {
      paramlxz.a(7, g.intValue());
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (a != null) {
      i = j + lxz.e(1, a.intValue());
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
          kcr localkcr = b[j];
          int k = i;
          if (localkcr != null) {
            k = i + lxz.d(2, localkcr);
          }
          j += 1;
          i = k;
        }
        j = i;
      }
    }
    i = j;
    if (c != null) {
      i = j + lxz.e(3, c.longValue());
    }
    j = i;
    if (d != null) {
      j = i + lxz.d(4, d);
    }
    i = j;
    if (e != null) {
      i = j + lxz.e(5, e.longValue());
    }
    j = i;
    if (f != null)
    {
      f.booleanValue();
      j = i + (lxz.f(6) + 1);
    }
    i = j;
    if (g != null) {
      i = j + lxz.e(7, g.intValue());
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     kaw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */