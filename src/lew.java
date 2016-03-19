public final class lew
  extends lyb<lew>
{
  public lev a = null;
  public les[] b = les.d();
  
  public lew()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.b(2, a);
    }
    if ((b != null) && (b.length > 0))
    {
      int i = 0;
      while (i < b.length)
      {
        les localles = b[i];
        if (localles != null) {
          paramlxz.b(3, localles);
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
      i = j + lxz.d(2, a);
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
          les localles = b[j];
          int k = i;
          if (localles != null) {
            k = i + lxz.d(3, localles);
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
 * Qualified Name:     lew
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */