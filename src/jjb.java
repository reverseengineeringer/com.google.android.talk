public final class jjb
  extends lyb<jjb>
{
  public int a = Integer.MIN_VALUE;
  public jjd[] b = jjd.d();
  
  public jjb()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != Integer.MIN_VALUE) {
      paramlxz.a(1, a);
    }
    if ((b != null) && (b.length > 0))
    {
      int i = 0;
      while (i < b.length)
      {
        jjd localjjd = b[i];
        if (localjjd != null) {
          paramlxz.b(2, localjjd);
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
    if (a != Integer.MIN_VALUE) {
      i = j + lxz.e(1, a);
    }
    j = i;
    if (b != null)
    {
      j = i;
      if (b.length > 0)
      {
        j = 0;
        while (j < b.length)
        {
          jjd localjjd = b[j];
          int k = i;
          if (localjjd != null) {
            k = i + lxz.d(2, localjjd);
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
 * Qualified Name:     jjb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */