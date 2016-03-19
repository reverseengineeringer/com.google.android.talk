public final class kkb
  extends lyb<kkb>
{
  public kkc[] a = kkc.d();
  
  public kkb()
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
        kkc localkkc = a[i];
        if (localkkc != null) {
          paramlxz.b(1, localkkc);
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
          kkc localkkc = a[j];
          k = i;
          if (localkkc != null) {
            k = i + lxz.d(1, localkkc);
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
 * Qualified Name:     kkb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */