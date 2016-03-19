public final class gbr
  extends gbh<gbr>
{
  public int a = 0;
  public String b = "";
  public String c = "";
  
  public gbr()
  {
    o = null;
    p = -1;
  }
  
  protected int a()
  {
    int j = super.a();
    int i = j;
    if (a != 0) {
      i = j + gbg.b(1, a);
    }
    j = i;
    if (!b.equals("")) {
      j = i + gbg.b(2, b);
    }
    i = j;
    if (!c.equals("")) {
      i = j + gbg.b(3, c);
    }
    return i;
  }
  
  public void a(gbg paramgbg)
  {
    if (a != 0) {
      paramgbg.a(1, a);
    }
    if (!b.equals("")) {
      paramgbg.a(2, b);
    }
    if (!c.equals("")) {
      paramgbg.a(3, c);
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
        do
        {
          do
          {
            return bool1;
            bool1 = bool2;
          } while (!(paramObject instanceof gbr));
          paramObject = (gbr)paramObject;
          bool1 = bool2;
        } while (a != a);
        if (b != null) {
          break;
        }
        bool1 = bool2;
      } while (b != null);
      if (c != null) {
        break label92;
      }
      bool1 = bool2;
    } while (c != null);
    label92:
    while (c.equals(c))
    {
      return a((gbh)paramObject);
      if (b.equals(b)) {
        break;
      }
      return false;
    }
    return false;
  }
  
  public int hashCode()
  {
    int j = 0;
    int k = a;
    int i;
    if (b == null)
    {
      i = 0;
      if (c != null) {
        break label58;
      }
    }
    for (;;)
    {
      return ((i + (k + 527) * 31) * 31 + j) * 31 + c();
      i = b.hashCode();
      break;
      label58:
      j = c.hashCode();
    }
  }
}

/* Location:
 * Qualified Name:     gbr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */