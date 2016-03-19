public final class kbw
  extends lyb<kbw>
{
  public kcm[] a = kcm.d();
  public kdp responseHeader = null;
  
  public kbw()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (responseHeader != null) {
      paramlxz.b(1, responseHeader);
    }
    if ((a != null) && (a.length > 0))
    {
      int i = 0;
      while (i < a.length)
      {
        kcm localkcm = a[i];
        if (localkcm != null) {
          paramlxz.b(2, localkcm);
        }
        i += 1;
      }
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (responseHeader != null) {
      i = j + lxz.d(1, responseHeader);
    }
    j = i;
    if (a != null)
    {
      j = i;
      if (a.length > 0)
      {
        j = 0;
        while (j < a.length)
        {
          kcm localkcm = a[j];
          int k = i;
          if (localkcm != null) {
            k = i + lxz.d(2, localkcm);
          }
          j += 1;
          i = k;
        }
        j = i;
      }
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     kbw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */