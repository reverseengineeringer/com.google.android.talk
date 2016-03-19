public final class jvw
  extends lyb<jvw>
{
  public jvx[] a = jvx.d();
  public Long b = null;
  
  public jvw()
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
        jvx localjvx = a[i];
        if (localjvx != null) {
          paramlxz.b(1, localjvx);
        }
        i += 1;
      }
    }
    if (b != null) {
      paramlxz.b(2, b.longValue());
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i = super.b();
    int j = i;
    if (a != null)
    {
      j = i;
      if (a.length > 0)
      {
        int k = 0;
        for (;;)
        {
          j = i;
          if (k >= a.length) {
            break;
          }
          jvx localjvx = a[k];
          j = i;
          if (localjvx != null) {
            j = i + lxz.d(1, localjvx);
          }
          k += 1;
          i = j;
        }
      }
    }
    i = j;
    if (b != null) {
      i = j + lxz.e(2, b.longValue());
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     jvw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */