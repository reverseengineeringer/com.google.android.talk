public final class jxa
  extends lyb<jxa>
{
  public jxb[] a = jxb.d();
  
  public jxa()
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
        jxb localjxb = a[i];
        if (localjxb != null) {
          paramlxz.b(1, localjxb);
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
          jxb localjxb = a[j];
          k = i;
          if (localjxb != null) {
            k = i + lxz.d(1, localjxb);
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
 * Qualified Name:     jxa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */