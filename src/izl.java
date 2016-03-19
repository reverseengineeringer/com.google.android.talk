public final class izl
  extends lyb<izl>
{
  public izq[] a = izq.d();
  public jac b = null;
  public izp c = null;
  
  public izl()
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
        izq localizq = a[i];
        if (localizq != null) {
          paramlxz.b(1, localizq);
        }
        i += 1;
      }
    }
    if (b != null) {
      paramlxz.b(2, b);
    }
    if (c != null) {
      paramlxz.b(3, c);
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
          izq localizq = a[k];
          j = i;
          if (localizq != null) {
            j = i + lxz.d(1, localizq);
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
    j = i;
    if (c != null) {
      j = i + lxz.d(3, c);
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     izl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */