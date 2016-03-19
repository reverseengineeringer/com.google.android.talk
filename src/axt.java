import android.text.TextUtils;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public final class axt
  implements Serializable
{
  private static final long serialVersionUID = 2L;
  private final dtw a;
  private String b;
  private final String c;
  private String d;
  private List<String> e;
  private List<String> f;
  private String g;
  
  public axt(axu paramaxu)
  {
    hbs.b("Expected non-null", a);
    a = a;
    b = b;
    c = c;
    d = d;
  }
  
  public static axt a(dtw paramdtw, String paramString1, String paramString2)
  {
    axu localaxu = newBuilder();
    localaxu.a(paramdtw);
    localaxu.a(paramString1);
    localaxu.b(paramString2);
    return localaxu.a();
  }
  
  public static axu newBuilder()
  {
    return new axu();
  }
  
  public void a(String paramString)
  {
    g = paramString;
  }
  
  public boolean a()
  {
    return a != null;
  }
  
  public dtw b()
  {
    return a;
  }
  
  public void b(String paramString)
  {
    if (f == null) {
      f = new ArrayList();
    }
    f.add(paramString);
  }
  
  public void c(String paramString)
  {
    if (e == null) {
      e = new ArrayList();
    }
    e.add(paramString);
  }
  
  public boolean c()
  {
    return !TextUtils.isEmpty(b);
  }
  
  public String d()
  {
    return b;
  }
  
  public boolean e()
  {
    return !TextUtils.isEmpty(c);
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if (!(paramObject instanceof axt)) {
      return false;
    }
    paramObject = (axt)paramObject;
    return a.equals(a);
  }
  
  public String f()
  {
    return c;
  }
  
  public String g()
  {
    return d;
  }
  
  public cyx h()
  {
    if (a.a())
    {
      String str1 = a.d;
      String str2 = aal.p();
      if (!TextUtils.isEmpty(b)) {}
      for (boolean bool = true;; bool = false) {
        return aal.a(str1, str2, bool, d, b, 0);
      }
    }
    return aal.a(a.b(), b, b, a.e, d, null);
  }
  
  public int hashCode()
  {
    return a.hashCode();
  }
  
  public String i()
  {
    String str1 = String.valueOf(b());
    String str2 = String.valueOf(d());
    String str3 = String.valueOf(f());
    String str4 = String.valueOf(g());
    return String.valueOf(str1).length() + 12 + String.valueOf(str2).length() + String.valueOf(str3).length() + String.valueOf(str4).length() + "[Person] " + str1 + " " + str2 + " " + str3 + " " + str4;
  }
  
  public List<String> j()
  {
    return f;
  }
  
  public List<String> k()
  {
    return e;
  }
  
  public String l()
  {
    return g;
  }
  
  public String toString()
  {
    String str1 = String.valueOf(ezi.b(b));
    String str2 = String.valueOf(a);
    String str3 = String.valueOf(ezi.b(c));
    return String.valueOf(str1).length() + 39 + String.valueOf(str2).length() + String.valueOf(str3).length() + "Person {name: " + str1 + " | inviteeId: " + str2 + " | email: " + str3 + "}";
  }
}

/* Location:
 * Qualified Name:     axt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */