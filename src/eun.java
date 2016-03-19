public final class eun
  extends lyi
{
  public euo[] a = euo.d();
  
  public eun()
  {
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if ((a != null) && (a.length > 0))
    {
      int i = 0;
      while (i < a.length)
      {
        euo localeuo = a[i];
        if (localeuo != null) {
          paramlxz.b(1, localeuo);
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
          euo localeuo = a[j];
          k = i;
          if (localeuo != null) {
            k = i + lxz.d(1, localeuo);
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
 * Qualified Name:     eun
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */