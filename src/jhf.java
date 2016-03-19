public final class jhf
  extends lyb<jhf>
{
  public jip[] a = jip.d();
  
  public jhf()
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
        jip localjip = a[i];
        if (localjip != null) {
          paramlxz.b(1, localjip);
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
          jip localjip = a[j];
          k = i;
          if (localjip != null) {
            k = i + lxz.d(1, localjip);
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
 * Qualified Name:     jhf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */