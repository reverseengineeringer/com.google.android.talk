public final class mit
  extends lyb<mit>
{
  public mir[] a = mir.d();
  
  public mit()
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
        mir localmir = a[i];
        if (localmir != null) {
          paramlxz.b(1, localmir);
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
          mir localmir = a[j];
          k = i;
          if (localmir != null) {
            k = i + lxz.d(1, localmir);
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
 * Qualified Name:     mit
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */