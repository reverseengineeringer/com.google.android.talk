public final class mem
  extends lyb<mem>
{
  public mel[] a = mel.d();
  
  public mem()
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
        mel localmel = a[i];
        if (localmel != null) {
          paramlxz.b(1, localmel);
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
          mel localmel = a[j];
          k = i;
          if (localmel != null) {
            k = i + lxz.d(1, localmel);
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
 * Qualified Name:     mem
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */