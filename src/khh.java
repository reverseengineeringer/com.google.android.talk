public final class khh
  extends lyb<khh>
{
  public khf a = null;
  public String b = null;
  public kii c = null;
  public khf[] d = khf.d();
  public kdp responseHeader = null;
  
  public khh()
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
    if (c != null) {
      paramlxz.b(3, c);
    }
    if (b != null) {
      paramlxz.a(4, b);
    }
    if ((d != null) && (d.length > 0))
    {
      int i = 0;
      while (i < d.length)
      {
        khf localkhf = d[i];
        if (localkhf != null) {
          paramlxz.b(5, localkhf);
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
    if (c != null) {
      k = j + lxz.d(3, c);
    }
    i = k;
    if (b != null) {
      i = k + lxz.b(4, b);
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
          khf localkhf = d[j];
          k = i;
          if (localkhf != null) {
            k = i + lxz.d(5, localkhf);
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
 * Qualified Name:     khh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */