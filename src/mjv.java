public final class mjv
  extends lyb<mjv>
{
  public String[] a = lyo.f;
  public Boolean b = null;
  
  public mjv()
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
        String str = a[i];
        if (str != null) {
          paramlxz.a(1, str);
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
    int i = 0;
    int i1 = super.b();
    int j;
    int k;
    if ((a != null) && (a.length > 0))
    {
      j = 0;
      int m;
      for (k = 0; i < a.length; k = m)
      {
        String str = a[i];
        int n = j;
        m = k;
        if (str != null)
        {
          m = k + 1;
          n = j + lxz.a(str);
        }
        i += 1;
        j = n;
      }
    }
    for (i = i1 + j + k * 1;; i = i1)
    {
      j = i;
      if (b != null)
      {
        b.booleanValue();
        j = i + (lxz.f(2) + 1);
      }
      return j;
    }
  }
}

/* Location:
 * Qualified Name:     mjv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */