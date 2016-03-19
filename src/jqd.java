public final class jqd
  extends lyb<jqd>
{
  public jqc[] a = jqc.d();
  public Boolean b = null;
  
  public jqd()
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
        jqc localjqc = a[i];
        if (localjqc != null) {
          paramlxz.b(1, localjqc);
        }
        i += 1;
      }
    }
    if (b != null) {
      paramlxz.a(2, b.booleanValue());
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
          jqc localjqc = a[k];
          j = i;
          if (localjqc != null) {
            j = i + lxz.d(1, localjqc);
          }
          k += 1;
          i = j;
        }
      }
    }
    i = j;
    if (b != null)
    {
      b.booleanValue();
      i = j + (lxz.f(2) + 1);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     jqd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */