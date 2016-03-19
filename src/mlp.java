public final class mlp
  extends lyb<mlp>
{
  public mlo[] a = mlo.d();
  public Boolean b = null;
  
  public mlp()
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
        mlo localmlo = a[i];
        if (localmlo != null) {
          paramlxz.b(1, localmlo);
        }
        i += 1;
      }
    }
    if (b != null) {
      paramlxz.a(2, b.booleanValue());
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
          mlo localmlo = a[k];
          j = i;
          if (localmlo != null) {
            j = i + lxz.d(1, localmlo);
          }
          k += 1;
          i = j;
        }
      }
    }
    i = j;
    if (b != null)
    {
      b.booleanValue();
      i = j + (lxz.f(2) + 1);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     mlp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */