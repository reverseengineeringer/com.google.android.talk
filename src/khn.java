public final class khn
  extends lyb<khn>
{
  public khk a = null;
  public khm b = null;
  public Boolean c = null;
  public kii d = null;
  public khk[] e = khk.d();
  public kdo requestHeader = null;
  
  public khn()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (requestHeader != null) {
      paramlxz.b(1, requestHeader);
    }
    if (a != null) {
      paramlxz.b(2, a);
    }
    if (b != null) {
      paramlxz.b(3, b);
    }
    if (c != null) {
      paramlxz.a(4, c.booleanValue());
    }
    if (d != null) {
      paramlxz.b(5, d);
    }
    if ((e != null) && (e.length > 0))
    {
      int i = 0;
      while (i < e.length)
      {
        khk localkhk = e[i];
        if (localkhk != null) {
          paramlxz.b(6, localkhk);
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
    if (requestHeader != null) {
      i = j + lxz.d(1, requestHeader);
    }
    j = i;
    if (a != null) {
      j = i + lxz.d(2, a);
    }
    i = j;
    if (b != null) {
      i = j + lxz.d(3, b);
    }
    j = i;
    if (c != null)
    {
      c.booleanValue();
      j = i + (lxz.f(4) + 1);
    }
    i = j;
    if (d != null) {
      i = j + lxz.d(5, d);
    }
    j = i;
    if (e != null)
    {
      j = i;
      if (e.length > 0)
      {
        j = 0;
        while (j < e.length)
        {
          khk localkhk = e[j];
          int k = i;
          if (localkhk != null) {
            k = i + lxz.d(6, localkhk);
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
 * Qualified Name:     khn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */