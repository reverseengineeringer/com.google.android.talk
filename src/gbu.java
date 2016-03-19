public final class gbu
  extends gbh<gbu>
{
  private static volatile gbu[] c;
  public String a = "";
  public String b = "";
  
  public gbu()
  {
    o = null;
    p = -1;
  }
  
  public static gbu[] b()
  {
    if (c == null) {}
    synchronized (gbl.a)
    {
      if (c == null) {
        c = new gbu[0];
      }
      return c;
    }
  }
  
  protected int a()
  {
    int j = super.a();
    int i = j;
    if (!a.equals("")) {
      i = j + gbg.b(1, a);
    }
    j = i;
    if (!b.equals("")) {
      j = i + gbg.b(2, b);
    }
    return j;
  }
  
  public void a(gbg paramgbg)
  {
    if (!a.equals("")) {
      paramgbg.a(1, a);
    }
    if (!b.equals("")) {
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
        } while (!(paramObject instanceof gbu));
        paramObject = (gbu)paramObject;
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
 * Qualified Name:     gbu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */