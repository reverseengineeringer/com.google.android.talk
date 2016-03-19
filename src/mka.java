public final class mka
  extends lyb<mka>
{
  public mmm a = null;
  public mjy[] b = mjy.d();
  public mmg c = null;
  public mks d = null;
  public miq e = null;
  public mmb f = null;
  public mla g = null;
  public String h = null;
  
  public mka()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if ((b != null) && (b.length > 0))
    {
      int i = 0;
      while (i < b.length)
      {
        mjy localmjy = b[i];
        if (localmjy != null) {
          paramlxz.b(1, localmjy);
        }
        i += 1;
      }
    }
    if (c != null) {
      paramlxz.b(2, c);
    }
    if (a != null) {
      paramlxz.b(3, a);
    }
    if (d != null) {
      paramlxz.b(4, d);
    }
    if (e != null) {
      paramlxz.b(5, e);
    }
    if (f != null) {
      paramlxz.b(6, f);
    }
    if (g != null) {
      paramlxz.b(7, g);
    }
    if (h != null) {
      paramlxz.a(8, h);
    }
    super.a(paramlxz);
  }
  
  protected int b()
  {
    int i = super.b();
    int j = i;
    if (b != null)
    {
      j = i;
      if (b.length > 0)
      {
        int k = 0;
        for (;;)
        {
          j = i;
          if (k >= b.length) {
            break;
          }
          mjy localmjy = b[k];
          j = i;
          if (localmjy != null) {
            j = i + lxz.d(1, localmjy);
          }
          k += 1;
          i = j;
        }
      }
    }
    i = j;
    if (c != null) {
      i = j + lxz.d(2, c);
    }
    j = i;
    if (a != null) {
      j = i + lxz.d(3, a);
    }
    i = j;
    if (d != null) {
      i = j + lxz.d(4, d);
    }
    j = i;
    if (e != null) {
      j = i + lxz.d(5, e);
    }
    i = j;
    if (f != null) {
      i = j + lxz.d(6, f);
    }
    j = i;
    if (g != null) {
      j = i + lxz.d(7, g);
    }
    i = j;
    if (h != null) {
      i = j + lxz.b(8, h);
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     mka
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */