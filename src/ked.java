public final class ked
  extends lyb<ked>
{
  public jxg[] a = jxg.d();
  public kdp responseHeader = null;
  
  public ked()
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
        jxg localjxg = a[i];
        if (localjxg != null) {
          paramlxz.b(1, localjxg);
        }
        i += 1;
      }
    }
    if (responseHeader != null) {
      paramlxz.b(2, responseHeader);
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
          jxg localjxg = a[k];
          j = i;
          if (localjxg != null) {
            j = i + lxz.d(1, localjxg);
          }
          k += 1;
          i = j;
        }
      }
    }
    i = j;
    if (responseHeader != null) {
      i = j + lxz.d(2, responseHeader);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     ked
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */