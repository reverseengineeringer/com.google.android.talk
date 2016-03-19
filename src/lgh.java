public final class lgh
  extends lyb<lgh>
{
  public lfy[] a = lfy.d();
  
  public lgh()
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
        lfy locallfy = a[i];
        if (locallfy != null) {
          paramlxz.b(1, locallfy);
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
          lfy locallfy = a[j];
          k = i;
          if (locallfy != null) {
            k = i + lxz.d(1, locallfy);
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
 * Qualified Name:     lgh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */