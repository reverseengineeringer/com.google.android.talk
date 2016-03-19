public final class gbd
  extends gbh<gbd>
{
  private static volatile gbd[] c;
  public int a = 1;
  public gbe b = null;
  
  public gbd()
  {
    o = null;
    p = -1;
  }
  
  public static gbd[] b()
  {
    if (c == null) {}
    synchronized (gbl.a)
    {
      if (c == null) {
        c = new gbd[0];
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
        } while (!(paramObject instanceof gbd));
        paramObject = (gbd)paramObject;
        bool1 = bool2;
      } while (a != a);
      if (b != null) {
        break;
      }
      bool1 = bool2;
    } while (b != null);
    while (b.equals(b)) {
      return a((gbh)paramObject);
    }
    return false;
  }
  
  public int hashCode()
  {
    int j = a;
    if (b == null) {}
    for (int i = 0;; i = b.hashCode()) {
      return (i + (j + 527) * 31) * 31 + c();
    }
  }
}

/* Location:
 * Qualified Name:     gbd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */