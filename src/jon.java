public final class jon
  extends lyb<jon>
{
  public jop[] a = jop.d();
  public jop b = null;
  
  public jon()
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
        jop localjop = a[i];
        if (localjop != null) {
          paramlxz.b(1, localjop);
        }
        i += 1;
      }
    }
    if (b != null) {
      paramlxz.b(2, b);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i = super.b();
    int j = i;
    if (a != null)
    {
      j = i;
      if (a.length > 0)
      {
        int k = 0;
        for (;;)
        {
          j = i;
          if (k >= a.length) {
            break;
          }
          jop localjop = a[k];
          j = i;
          if (localjop != null) {
            j = i + lxz.d(1, localjop);
          }
          k += 1;
          i = j;
        }
      }
    }
    i = j;
    if (b != null) {
      i = j + lxz.d(2, b);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     jon
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */