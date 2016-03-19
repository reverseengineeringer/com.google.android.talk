public final class mgn
  extends lyb<mgn>
{
  public mgc a = null;
  public Integer b = null;
  public mgo c = null;
  public Integer d = null;
  public mgh[] e = mgh.d();
  
  public mgn()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (a != null) {
      paramlxz.b(2, a);
    }
    if (b != null) {
      paramlxz.a(5, b.intValue());
    }
    if (c != null) {
      paramlxz.b(6, c);
    }
    if (d != null) {
      paramlxz.a(7, d.intValue());
    }
    if ((e != null) && (e.length > 0))
    {
      int i = 0;
      while (i < e.length)
      {
        mgh localmgh = e[i];
        if (localmgh != null) {
          paramlxz.b(8, localmgh);
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
    if (b != null) {
      j = i + lxz.e(5, b.intValue());
    }
    int k = j;
    if (c != null) {
      k = j + lxz.d(6, c);
    }
    i = k;
    if (d != null) {
      i = k + lxz.e(7, d.intValue());
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
          mgh localmgh = e[j];
          k = i;
          if (localmgh != null) {
            k = i + lxz.d(8, localmgh);
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
 * Qualified Name:     mgn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */