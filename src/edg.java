import java.util.Iterator;
import java.util.Set;

public final class edg
  extends dyx
{
  private final String a;
  private String e = null;
  private Integer f = null;
  private boolean g = false;
  private String h;
  private boolean i = false;
  private String j;
  
  public edg(bfd parambfd, String paramString)
  {
    super(parambfd);
    a = paramString;
  }
  
  private String a(bfz parambfz, String paramString)
  {
    if (ezi.a("Babel", 3))
    {
      str = String.valueOf(a);
      if (str.length() == 0) {
        break label139;
      }
    }
    for (String str = "updateConversationNameLocally conversationId: ".concat(str);; str = new String("updateConversationNameLocally conversationId: "))
    {
      ezi.a("Babel", str, new Object[0]);
      parambfz.a();
      try
      {
        str = parambfz.n(a);
        long l2 = parambfz.M(a);
        long l1 = 0L;
        if (parambfz.y(a) == 1) {
          l1 = Long.MAX_VALUE;
        }
        new edl(a, b.b.b(), l2, l1, paramString, e, emc.b).a(parambfz, c);
        parambfz.b();
        return str;
      }
      finally
      {
        label139:
        parambfz.c();
      }
    }
  }
  
  public void a(int paramInt)
  {
    f = Integer.valueOf(paramInt);
  }
  
  public void a(String paramString)
  {
    e = paramString;
  }
  
  public void b(String paramString)
  {
    h = paramString;
    g = true;
  }
  
  public void c(String paramString)
  {
    j = paramString;
    i = true;
  }
  
  public void p_()
  {
    bfz localbfz = new bfz(aal.oJ, b.a);
    Object localObject1;
    String str;
    if ((e != null) && (!bfz.a(a)))
    {
      localObject1 = bfz.i();
      str = a(localbfz, (String)localObject1);
      a(new dpl((String)localObject1, a, e, str));
    }
    if (f != null) {
      new edh(a, aal.a(f, 0)).a(localbfz, c);
    }
    if ((i) || (g))
    {
      localbfz.a();
      try
      {
        localObject1 = localbfz.ac(a).iterator();
        while (((Iterator)localObject1).hasNext())
        {
          str = (String)((Iterator)localObject1).next();
          if (g) {
            localbfz.d(str, h);
          }
          if (i) {
            localbfz.e(str, j);
          }
        }
      }
      finally
      {
        localbfz.c();
      }
      localbfz.c();
    }
  }
}

/* Location:
 * Qualified Name:     edg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */