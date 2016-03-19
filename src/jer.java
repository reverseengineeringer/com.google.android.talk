public final class jer
  extends lyb<jer>
{
  public String a = null;
  public mcq b = null;
  public Boolean c = null;
  public lfi d = null;
  public String[] e = lyo.f;
  
  public jer()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (b != null) {
      paramlxz.b(1, b);
    }
    if (c != null) {
      paramlxz.a(2, c.booleanValue());
    }
    if (d != null) {
      paramlxz.b(3, d);
    }
    if (a != null) {
      paramlxz.a(4, a);
    }
    if ((e != null) && (e.length > 0))
    {
      int i = 0;
      while (i < e.length)
      {
        String str = e[i];
        if (str != null) {
          paramlxz.a(5, str);
        }
        i += 1;
      }
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int n = 0;
    int j = super.b();
    int i = j;
    if (b != null) {
      i = j + lxz.d(1, b);
    }
    j = i;
    if (c != null)
    {
      c.booleanValue();
      j = i + (lxz.f(2) + 1);
    }
    int k = j;
    if (d != null) {
      k = j + lxz.d(3, d);
    }
    i = k;
    if (a != null) {
      i = k + lxz.b(4, a);
    }
    j = i;
    if (e != null)
    {
      j = i;
      if (e.length > 0)
      {
        k = 0;
        int m = 0;
        j = n;
        while (j < e.length)
        {
          String str = e[j];
          int i1 = k;
          n = m;
          if (str != null)
          {
            n = m + 1;
            i1 = k + lxz.a(str);
          }
          j += 1;
          k = i1;
          m = n;
        }
        j = i + k + m * 1;
      }
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     jer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */