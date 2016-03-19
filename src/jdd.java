public final class jdd
  extends lyb<jdd>
{
  public ixb[] a = ixb.b;
  
  public jdd()
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
        ixb localixb = a[i];
        if (localixb != null) {
          paramlxz.b(1, localixb);
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
          ixb localixb = a[j];
          k = i;
          if (localixb != null) {
            k = i + lxz.d(1, localixb);
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
 * Qualified Name:     jdd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */