public final class iyz
  extends lyb<iyz>
{
  public Integer a = null;
  public Integer b = null;
  public iza[] c = iza.d();
  public Boolean d = null;
  public Integer e = null;
  public Integer f = null;
  public Integer g = null;
  
  public iyz()
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
        iza localiza = c[i];
        if (localiza != null) {
          paramlxz.b(3, localiza);
        }
        i += 1;
      }
    }
    if (d != null) {
      paramlxz.a(4, d.booleanValue());
    }
    if (e != null) {
      paramlxz.a(5, e.intValue());
    }
    if (f != null) {
      paramlxz.a(6, f.intValue());
    }
    if (g != null) {
      paramlxz.a(7, g.intValue());
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
          iza localiza = c[j];
          int k = i;
          if (localiza != null) {
            k = i + lxz.d(3, localiza);
          }
          j += 1;
          i = k;
        }
        j = i;
      }
    }
    i = j;
    if (d != null)
    {
      d.booleanValue();
      i = j + (lxz.f(4) + 1);
    }
    j = i;
    if (e != null) {
      j = i + lxz.e(5, e.intValue());
    }
    i = j;
    if (f != null) {
      i = j + lxz.e(6, f.intValue());
    }
    j = i;
    if (g != null) {
      j = i + lxz.e(7, g.intValue());
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     iyz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */