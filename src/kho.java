public final class kho
  extends lyb<kho>
{
  public khk a = null;
  public kii b = null;
  public Integer c = null;
  public khk[] d = khk.d();
  public kdp responseHeader = null;
  
  public kho()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (responseHeader != null) {
      paramlxz.b(1, responseHeader);
    }
    if (a != null) {
      paramlxz.b(2, a);
    }
    if (b != null) {
      paramlxz.b(3, b);
    }
    if (c != null) {
      paramlxz.a(4, c.intValue());
    }
    if ((d != null) && (d.length > 0))
    {
      int i = 0;
      while (i < d.length)
      {
        khk localkhk = d[i];
        if (localkhk != null) {
          paramlxz.b(5, localkhk);
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
    if (responseHeader != null) {
      i = j + lxz.d(1, responseHeader);
    }
    j = i;
    if (a != null) {
      j = i + lxz.d(2, a);
    }
    int k = j;
    if (b != null) {
      k = j + lxz.d(3, b);
    }
    i = k;
    if (c != null) {
      i = k + lxz.e(4, c.intValue());
    }
    j = i;
    if (d != null)
    {
      j = i;
      if (d.length > 0)
      {
        j = 0;
        while (j < d.length)
        {
          khk localkhk = d[j];
          k = i;
          if (localkhk != null) {
            k = i + lxz.d(5, localkhk);
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
 * Qualified Name:     kho
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */