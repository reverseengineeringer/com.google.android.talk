public final class jpv
  extends lyb<jpv>
{
  public String a = null;
  public jpw[] b = jpw.d();
  
  public jpv()
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
        jpw localjpw = b[i];
        if (localjpw != null) {
          paramlxz.b(2, localjpw);
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
          jpw localjpw = b[j];
          int k = i;
          if (localjpw != null) {
            k = i + lxz.d(2, localjpw);
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
 * Qualified Name:     jpv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */