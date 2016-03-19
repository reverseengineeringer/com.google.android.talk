public final class miy
  extends lyb<miy>
{
  public String a = null;
  public miz[] b = miz.d();
  public miz[] c = miz.d();
  public Boolean d = null;
  public mho e = null;
  
  public miy()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    int j = 0;
    if (a != null) {
      paramlxz.a(1, a);
    }
    int i;
    miz localmiz;
    if ((b != null) && (b.length > 0))
    {
      i = 0;
      while (i < b.length)
      {
        localmiz = b[i];
        if (localmiz != null) {
          paramlxz.b(2, localmiz);
        }
        i += 1;
      }
    }
    if ((c != null) && (c.length > 0))
    {
      i = j;
      while (i < c.length)
      {
        localmiz = c[i];
        if (localmiz != null) {
          paramlxz.b(3, localmiz);
        }
        i += 1;
      }
    }
    if (d != null) {
      paramlxz.a(4, d.booleanValue());
    }
    if (e != null) {
      paramlxz.b(5, e);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int m = 0;
    int i = super.b();
    int j = i;
    if (a != null) {
      j = i + lxz.b(1, a);
    }
    i = j;
    miz localmiz;
    int k;
    if (b != null)
    {
      i = j;
      if (b.length > 0)
      {
        i = j;
        j = 0;
        while (j < b.length)
        {
          localmiz = b[j];
          k = i;
          if (localmiz != null) {
            k = i + lxz.d(2, localmiz);
          }
          j += 1;
          i = k;
        }
      }
    }
    j = i;
    if (c != null)
    {
      j = i;
      if (c.length > 0)
      {
        k = m;
        for (;;)
        {
          j = i;
          if (k >= c.length) {
            break;
          }
          localmiz = c[k];
          j = i;
          if (localmiz != null) {
            j = i + lxz.d(3, localmiz);
          }
          k += 1;
          i = j;
        }
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
      j = i + lxz.d(5, e);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     miy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */