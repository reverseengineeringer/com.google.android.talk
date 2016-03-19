public final class jou
  extends lyb<jou>
{
  public jov[] a = jov.d();
  
  public jou()
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
        jov localjov = a[i];
        if (localjov != null) {
          paramlxz.b(1, localjov);
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
          jov localjov = a[j];
          k = i;
          if (localjov != null) {
            k = i + lxz.d(1, localjov);
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
 * Qualified Name:     jou
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */