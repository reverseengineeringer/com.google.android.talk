public final class kbt
  extends lyb<kbt>
{
  public kcm[] a = kcm.d();
  
  public kbt()
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
        kcm localkcm = a[i];
        if (localkcm != null) {
          paramlxz.b(1, localkcm);
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
          kcm localkcm = a[j];
          k = i;
          if (localkcm != null) {
            k = i + lxz.d(1, localkcm);
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
 * Qualified Name:     kbt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */