import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public final class dtw
  implements Serializable
{
  private static final long serialVersionUID = 1L;
  public final String a;
  public final String b;
  public final String c;
  public String d;
  public final String e;
  private List<dtt> f;
  
  private dtw(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    a = paramString1;
    b = paramString2;
    c = paramString3;
    d = paramString4;
    e = paramString5;
    f = null;
  }
  
  public dtw(kbi paramkbi)
  {
    a = a;
    b = c;
    c = b;
    e = null;
  }
  
  public static dtw a(cyx paramcyx)
  {
    String str = paramcyx.f();
    if (b != null) {
      return a(b, str, g);
    }
    if (str != null) {
      return new dtw(null, null, null, str, g);
    }
    return null;
  }
  
  public static dtw a(czb paramczb, String paramString1, String paramString2)
  {
    return new dtw(a, b, null, paramString1, paramString2);
  }
  
  public static dtw a(String paramString)
  {
    return new dtw(null, aal.m(paramString), null, paramString, null);
  }
  
  public static dtw a(String paramString1, String paramString2)
  {
    return new dtw(paramString1, null, null, null, paramString2);
  }
  
  public static dtw b(String paramString1, String paramString2)
  {
    return new dtw(null, null, paramString1, null, paramString2);
  }
  
  public void a(dtt paramdtt)
  {
    f = new ArrayList();
    f.add(paramdtt);
  }
  
  public boolean a()
  {
    return (d != null) && (b != null) && (b.equals(aal.m(d)));
  }
  
  public czb b()
  {
    return aal.a(a, b, d);
  }
  
  public List<dtt> c()
  {
    return f;
  }
  
  public kbi d()
  {
    kbi localkbi = new kbi();
    if (a != null) {
      a = a;
    }
    for (;;)
    {
      e = e;
      f = dtt.a(f);
      return localkbi;
      if (c != null)
      {
        b = c;
      }
      else if (d != null)
      {
        d = new lcf();
        d.a = ezm.k(d);
      }
    }
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (paramObject != null)
    {
      bool1 = bool2;
      if ((paramObject instanceof dtw))
      {
        paramObject = (dtw)paramObject;
        bool1 = bool2;
        if ((paramObject instanceof dtw))
        {
          paramObject = (dtw)paramObject;
          if ((b == null) || (b == null)) {
            break label64;
          }
          bool1 = b.equals(b);
        }
      }
    }
    label64:
    do
    {
      do
      {
        return bool1;
        if ((a != null) && (a != null)) {
          return a.equals(a);
        }
        if ((c != null) && (c != null)) {
          return c.equals(c);
        }
        bool1 = bool2;
      } while (d == null);
      bool1 = bool2;
    } while (d == null);
    return d.equals(d);
  }
  
  public int hashCode()
  {
    return 0;
  }
  
  public String toString()
  {
    String str1 = String.valueOf(ezi.b(b));
    String str2 = String.valueOf(ezi.b(a));
    String str3 = String.valueOf(ezi.b(c));
    String str4 = String.valueOf(ezi.b(d));
    return String.valueOf(str1).length() + 60 + String.valueOf(str2).length() + String.valueOf(str3).length() + String.valueOf(str4).length() + "InviteeId {chatId: " + str1 + " | gaiaId: " + str2 + " | circleId: " + str3 + " | phoneNumber: " + str4 + "}";
  }
}

/* Location:
 * Qualified Name:     dtw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */