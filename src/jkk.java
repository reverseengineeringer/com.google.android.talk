public final class jkk
  extends lyb<jkk>
{
  public String a = null;
  public jkl[] b = jkl.d();
  
  public jkk()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a);
    }
    if ((b != null) && (b.length > 0))
    {
      int i = 0;
      while (i < b.length)
      {
        jkl localjkl = b[i];
        if (localjkl != null) {
          paramlxz.b(2, localjkl);
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
      i = j + lxz.b(1, a);
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
          jkl localjkl = b[j];
          int k = i;
          if (localjkl != null) {
            k = i + lxz.d(2, localjkl);
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
 * Qualified Name:     jkk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */