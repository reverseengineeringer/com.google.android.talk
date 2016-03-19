public final class jvq
  extends lyb<jvq>
{
  public jvr[] a = jvr.d();
  
  public jvq()
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
        jvr localjvr = a[i];
        if (localjvr != null) {
          paramlxz.b(1, localjvr);
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
          jvr localjvr = a[j];
          k = i;
          if (localjvr != null) {
            k = i + lxz.d(1, localjvr);
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
 * Qualified Name:     jvq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */