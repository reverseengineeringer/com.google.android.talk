public final class lds
  extends lyb<lds>
{
  public ldu[] a = ldu.d();
  
  public lds()
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
        ldu localldu = a[i];
        if (localldu != null) {
          paramlxz.b(1, localldu);
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
          ldu localldu = a[j];
          k = i;
          if (localldu != null) {
            k = i + lxz.d(1, localldu);
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
 * Qualified Name:     lds
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */