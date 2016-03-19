public final class jiz
  extends lyb<jiz>
{
  public String a = null;
  public jja[] b = jja.d();
  
  public jiz()
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
        jja localjja = b[i];
        if (localjja != null) {
          paramlxz.b(2, localjja);
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
          jja localjja = b[j];
          int k = i;
          if (localjja != null) {
            k = i + lxz.d(2, localjja);
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
 * Qualified Name:     jiz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */