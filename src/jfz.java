public final class jfz
  extends lyb<jfz>
{
  public String a = null;
  public jga[] b = jga.d();
  
  public jfz()
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
        jga localjga = b[i];
        if (localjga != null) {
          paramlxz.b(2, localjga);
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
          jga localjga = b[j];
          int k = i;
          if (localjga != null) {
            k = i + lxz.d(2, localjga);
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
 * Qualified Name:     jfz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */