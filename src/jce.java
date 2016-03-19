public final class jce
  extends lyb<jce>
{
  public jod a = null;
  public joo[] b = joo.d();
  
  public jce()
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
        joo localjoo = b[i];
        if (localjoo != null) {
          paramlxz.b(2, localjoo);
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
          joo localjoo = b[j];
          int k = i;
          if (localjoo != null) {
            k = i + lxz.d(2, localjoo);
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
 * Qualified Name:     jce
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */