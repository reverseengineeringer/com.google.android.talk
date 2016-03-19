public final class jib
  extends lyb<jib>
{
  public jje[] a = jje.d();
  
  public jib()
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
        jje localjje = a[i];
        if (localjje != null) {
          paramlxz.b(1, localjje);
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
          jje localjje = a[j];
          k = i;
          if (localjje != null) {
            k = i + lxz.d(1, localjje);
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
 * Qualified Name:     jib
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */