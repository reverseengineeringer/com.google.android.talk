public final class kfq
  extends lyb<kfq>
{
  public kcr[] a = kcr.d();
  public kdo requestHeader = null;
  
  public kfq()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (requestHeader != null) {
      paramlxz.b(1, requestHeader);
    }
    if ((a != null) && (a.length > 0))
    {
      int i = 0;
      while (i < a.length)
      {
        kcr localkcr = a[i];
        if (localkcr != null) {
          paramlxz.b(2, localkcr);
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
    if (requestHeader != null) {
      i = j + lxz.d(1, requestHeader);
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
          kcr localkcr = a[j];
          int k = i;
          if (localkcr != null) {
            k = i + lxz.d(2, localkcr);
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
 * Qualified Name:     kfq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */