public final class kdx
  extends lyb<kdx>
{
  public Integer a = null;
  public kcb[] b = kcb.d();
  public jzl c = null;
  public jxr d = null;
  public Long e = null;
  public String f = null;
  public byte[] g = null;
  public kdp responseHeader = null;
  
  public kdx()
  {
    eD = null;
    eE = -1;
  }
  
  public void a(lxz paramlxz)
  {
    if (responseHeader != null) {
      paramlxz.b(1, responseHeader);
    }
    if (e != null) {
      paramlxz.a(2, e.longValue());
    }
    if (f != null) {
      paramlxz.a(3, f);
    }
    if ((b != null) && (b.length > 0))
    {
      int i = 0;
      while (i < b.length)
      {
        kcb localkcb = b[i];
        if (localkcb != null) {
          paramlxz.b(4, localkcb);
        }
        i += 1;
      }
    }
    if (g != null) {
      paramlxz.a(5, g);
    }
    if (c != null) {
      paramlxz.b(6, c);
    }
    if (d != null) {
      paramlxz.b(7, d);
    }
    if (a != null) {
      paramlxz.a(8, a.intValue());
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
    if (e != null) {
      j = i + lxz.d(2, e.longValue());
    }
    i = j;
    if (f != null) {
      i = j + lxz.b(3, f);
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
          kcb localkcb = b[j];
          int k = i;
          if (localkcb != null) {
            k = i + lxz.d(4, localkcb);
          }
          j += 1;
          i = k;
        }
        j = i;
      }
    }
    i = j;
    if (g != null) {
      i = j + lxz.b(5, g);
    }
    j = i;
    if (c != null) {
      j = i + lxz.d(6, c);
    }
    i = j;
    if (d != null) {
      i = j + lxz.d(7, d);
    }
    j = i;
    if (a != null) {
      j = i + lxz.e(8, a.intValue());
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     kdx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */