public final class jxh
  extends lyb<jxh>
{
  public kcd a = null;
  public jzo[] b = jzo.d();
  
  public jxh()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if ((b != null) && (b.length > 0))
    {
      int i = 0;
      while (i < b.length)
      {
        jzo localjzo = b[i];
        if (localjzo != null) {
          paramlxz.b(2, localjzo);
        }
        i += 1;
      }
    }
    if (a != null) {
      paramlxz.b(3, a);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i = super.b();
    int j = i;
    if (b != null)
    {
      j = i;
      if (b.length > 0)
      {
        int k = 0;
        for (;;)
        {
          j = i;
          if (k >= b.length) {
            break;
          }
          jzo localjzo = b[k];
          j = i;
          if (localjzo != null) {
            j = i + lxz.d(2, localjzo);
          }
          k += 1;
          i = j;
        }
      }
    }
    i = j;
    if (a != null) {
      i = j + lxz.d(3, a);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     jxh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */