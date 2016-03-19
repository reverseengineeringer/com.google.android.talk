public final class jcg
  extends lyb<jcg>
{
  public jpt a = null;
  public Boolean b = null;
  public Boolean c = null;
  public jpm[] d = jpm.d();
  public jpm[] e = jpm.d();
  
  public jcg()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    int j = 0;
    if (a != null) {
      paramlxz.b(1, a);
    }
    if (b != null) {
      paramlxz.a(2, b.booleanValue());
    }
    if (c != null) {
      paramlxz.a(3, c.booleanValue());
    }
    int i;
    jpm localjpm;
    if ((d != null) && (d.length > 0))
    {
      i = 0;
      while (i < d.length)
      {
        localjpm = d[i];
        if (localjpm != null) {
          paramlxz.b(4, localjpm);
        }
        i += 1;
      }
    }
    if ((e != null) && (e.length > 0))
    {
      i = j;
      while (i < e.length)
      {
        localjpm = e[i];
        if (localjpm != null) {
          paramlxz.b(5, localjpm);
        }
        i += 1;
      }
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int m = 0;
    int j = super.b();
    int i = j;
    if (a != null) {
      i = j + lxz.d(1, a);
    }
    int k = i;
    if (b != null)
    {
      b.booleanValue();
      k = i + (lxz.f(2) + 1);
    }
    j = k;
    if (c != null)
    {
      c.booleanValue();
      j = k + (lxz.f(3) + 1);
    }
    i = j;
    jpm localjpm;
    if (d != null)
    {
      i = j;
      if (d.length > 0)
      {
        i = j;
        j = 0;
        while (j < d.length)
        {
          localjpm = d[j];
          k = i;
          if (localjpm != null) {
            k = i + lxz.d(4, localjpm);
          }
          j += 1;
          i = k;
        }
      }
    }
    k = i;
    if (e != null)
    {
      k = i;
      if (e.length > 0)
      {
        j = m;
        for (;;)
        {
          k = i;
          if (j >= e.length) {
            break;
          }
          localjpm = e[j];
          k = i;
          if (localjpm != null) {
            k = i + lxz.d(5, localjpm);
          }
          j += 1;
          i = k;
        }
      }
    }
    return k;
  }
}

/* Location:
 * Qualified Name:     jcg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */