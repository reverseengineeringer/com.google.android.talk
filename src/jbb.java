public final class jbb
  extends lyb<jbb>
{
  public jbn a = null;
  public jba[] b = jba.d();
  
  public jbb()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.b(1, a);
    }
    if ((b != null) && (b.length > 0))
    {
      int i = 0;
      while (i < b.length)
      {
        jba localjba = b[i];
        if (localjba != null) {
          paramlxz.b(2, localjba);
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
    if (a != null) {
      i = j + lxz.d(1, a);
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
          jba localjba = b[j];
          int k = i;
          if (localjba != null) {
            k = i + lxz.d(2, localjba);
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
 * Qualified Name:     jbb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */