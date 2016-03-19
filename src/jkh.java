public final class jkh
  extends lyb<jkh>
{
  public jku[] a = jku.d();
  
  public jkh()
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
        jku localjku = a[i];
        if (localjku != null) {
          paramlxz.b(1, localjku);
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
          jku localjku = a[j];
          k = i;
          if (localjku != null) {
            k = i + lxz.d(1, localjku);
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
 * Qualified Name:     jkh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */