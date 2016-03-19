public final class gbc
  extends gbh<gbc>
{
  private static volatile gbc[] c;
  public String a = "";
  public gbd b = null;
  
  public gbc()
  {
    o = null;
    p = -1;
  }
  
  public static gbc[] b()
  {
    if (c == null) {}
    synchronized (gbl.a)
    {
      if (c == null) {
        c = new gbc[0];
      }
      return c;
    }
  }
  
  protected int a()
  {
    int j = super.a() + gbg.b(1, a);
    int i = j;
    if (b != null) {
      i = j + gbg.b(2, b);
    }
    return i;
  }
  
  public void a(gbg paramgbg)
  {
    paramgbg.a(1, a);
    if (b != null) {
      paramgbg.a(2, b);
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
          return bool1;
          bool1 = bool2;
        } while (!(paramObject instanceof gbc));
        paramObject = (gbc)paramObject;
        if (a != null) {
          break;
        }
        bool1 = bool2;
      } while (a != null);
      if (b != null) {
        break label79;
      }
      bool1 = bool2;
    } while (b != null);
    label79:
    while (b.equals(b))
    {
      return a((gbh)paramObject);
      if (a.equals(a)) {
        break;
      }
      return false;
    }
    return false;
  }
  
  public int hashCode()
  {
    int j = 0;
    int i;
    if (a == null)
    {
      i = 0;
      if (b != null) {
        break label48;
      }
    }
    for (;;)
    {
      return ((i + 527) * 31 + j) * 31 + c();
      i = a.hashCode();
      break;
      label48:
      j = b.hashCode();
    }
  }
}

/* Location:
 * Qualified Name:     gbc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */