public final class jbw
  extends lyb<jbw>
{
  public jbn a = null;
  public jbv[] b = jbv.d();
  
  public jbw()
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
        jbv localjbv = b[i];
        if (localjbv != null) {
          paramlxz.b(2, localjbv);
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
          jbv localjbv = b[j];
          int k = i;
          if (localjbv != null) {
            k = i + lxz.d(2, localjbv);
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
 * Qualified Name:     jbw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */