public final class ixn
  extends lyb<ixn>
{
  public String a = null;
  public String b = null;
  public String c = null;
  public ivm[] d = ivm.d();
  
  public ixn()
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
    if ((d != null) && (d.length > 0))
    {
      int i = 0;
      while (i < d.length)
      {
        ivm localivm = d[i];
        if (localivm != null) {
          paramlxz.b(3, localivm);
        }
        i += 1;
      }
    }
    if (c != null) {
      paramlxz.a(4, c);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i = super.b();
    int j = i;
    if (a != null) {
      j = i + lxz.b(1, a);
    }
    i = j;
    if (b != null) {
      i = j + lxz.b(2, b);
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
          ivm localivm = d[j];
          int k = i;
          if (localivm != null) {
            k = i + lxz.d(3, localivm);
          }
          j += 1;
          i = k;
        }
        j = i;
      }
    }
    i = j;
    if (c != null) {
      i = j + lxz.b(4, c);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     ixn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */