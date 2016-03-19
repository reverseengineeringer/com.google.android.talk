public final class jqm
  extends lyb<jqm>
{
  public jql[] a = jql.d();
  
  public jqm()
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
        jql localjql = a[i];
        if (localjql != null) {
          paramlxz.b(1, localjql);
        }
        i += 1;
      }
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i = super.b();
    int k = i;
    if (a != null)
    {
      k = i;
      if (a.length > 0)
      {
        int j = 0;
        for (;;)
        {
          k = i;
          if (j >= a.length) {
            break;
          }
          jql localjql = a[j];
          k = i;
          if (localjql != null) {
            k = i + lxz.d(1, localjql);
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
 * Qualified Name:     jqm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */