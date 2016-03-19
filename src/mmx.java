public final class mmx
  extends lyb<mmx>
{
  public Integer a = null;
  public mmw[] b = mmw.d();
  public Integer c = null;
  
  public mmx()
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
        mmw localmmw = b[i];
        if (localmmw != null) {
          paramlxz.b(2, localmmw);
        }
        i += 1;
      }
    }
    if (c != null) {
      paramlxz.a(3, c.intValue());
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
          mmw localmmw = b[j];
          int k = i;
          if (localmmw != null) {
            k = i + lxz.d(2, localmmw);
          }
          j += 1;
          i = k;
        }
        j = i;
      }
    }
    i = j;
    if (c != null) {
      i = j + lxz.e(3, c.intValue());
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     mmx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */