public final class gbb
  extends gbh<gbb>
{
  public gbc[] a = gbc.b();
  
  public gbb()
  {
    o = null;
    p = -1;
  }
  
  public static gbb a(byte[] paramArrayOfByte)
  {
    return (gbb)gbn.a(new gbb(), paramArrayOfByte, paramArrayOfByte.length);
  }
  
  protected int a()
  {
    int i = super.a();
    int k = i;
    if (a != null)
    {
      k = i;
      if (a.length > 0)
      {
        int j = 0;
        for (;;)
        {
          k = i;
          if (j >= a.length) {
            break;
          }
          gbc localgbc = a[j];
          k = i;
          if (localgbc != null) {
            k = i + gbg.b(1, localgbc);
          }
          j += 1;
          i = k;
        }
      }
    }
    return k;
  }
  
  public void a(gbg paramgbg)
  {
    if ((a != null) && (a.length > 0))
    {
      int i = 0;
      while (i < a.length)
      {
        gbc localgbc = a[i];
        if (localgbc != null) {
          paramgbg.a(1, localgbc);
        }
        i += 1;
      }
    }
    super.a(paramgbg);
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1;
    if (paramObject == this) {
      bool1 = true;
    }
    do
    {
      do
      {
        return bool1;
        bool1 = bool2;
      } while (!(paramObject instanceof gbb));
      paramObject = (gbb)paramObject;
      bool1 = bool2;
    } while (!gbl.a(a, a));
    return a((gbh)paramObject);
  }
  
  public int hashCode()
  {
    return (gbl.a(a) + 527) * 31 + c();
  }
}

/* Location:
 * Qualified Name:     gbb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */