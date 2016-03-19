public final class jxf
  extends lyb<jxf>
{
  public jxg[] a = jxg.d();
  
  public jxf()
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
        jxg localjxg = a[i];
        if (localjxg != null) {
          paramlxz.b(1, localjxg);
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
          jxg localjxg = a[j];
          k = i;
          if (localjxg != null) {
            k = i + lxz.d(1, localjxg);
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
 * Qualified Name:     jxf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */