public final class jik
  extends lyb<jik>
{
  public Integer a = null;
  public jil[] b = jil.d();
  
  public jik()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.a(1, a.intValue());
    }
    if ((b != null) && (b.length > 0))
    {
      int i = 0;
      while (i < b.length)
      {
        jil localjil = b[i];
        if (localjil != null) {
          paramlxz.b(2, localjil);
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
      i = j + lxz.e(1, a.intValue());
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
          jil localjil = b[j];
          int k = i;
          if (localjil != null) {
            k = i + lxz.d(2, localjil);
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
 * Qualified Name:     jik
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */