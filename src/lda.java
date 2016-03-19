public final class lda
  extends lyb<lda>
{
  public ldc[] a = ldc.d();
  public lcz b = null;
  
  public lda()
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
        ldc localldc = a[i];
        if (localldc != null) {
          paramlxz.b(1, localldc);
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
          ldc localldc = a[k];
          j = i;
          if (localldc != null) {
            j = i + lxz.d(1, localldc);
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
 * Qualified Name:     lda
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */