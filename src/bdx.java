import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

public final class bdx
  implements Serializable
{
  private final String a;
  private final List<bdw> b = new ArrayList();
  private final List<bee> c = new ArrayList();
  private final boolean d;
  private String e;
  private String f;
  
  public bdx(String paramString)
  {
    a = paramString;
    d = false;
  }
  
  public bdx(String paramString, boolean paramBoolean)
  {
    a = paramString;
    d = paramBoolean;
  }
  
  public String a()
  {
    return a;
  }
  
  public void a(bdw parambdw)
  {
    b.add(parambdw);
  }
  
  public void a(bee parambee)
  {
    c.add(parambee);
  }
  
  public void a(String paramString)
  {
    e = paramString;
  }
  
  public List<bee> b()
  {
    if (c != null) {
      return Collections.unmodifiableList(c);
    }
    return Collections.emptyList();
  }
  
  public void b(String paramString)
  {
    f = paramString;
  }
  
  public List<bdw> c()
  {
    if (b != null) {
      return Collections.unmodifiableList(b);
    }
    return Collections.emptyList();
  }
  
  public String d()
  {
    return e;
  }
  
  public String e()
  {
    return f;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if ((paramObject == null) || (getClass() != paramObject.getClass())) {
      return false;
    }
    paramObject = (bdx)paramObject;
    return a.equals(a);
  }
  
  public boolean f()
  {
    return d;
  }
  
  public int hashCode()
  {
    return a.hashCode();
  }
  
  public String toString()
  {
    String str1 = String.valueOf(ezi.b(a));
    String str2 = String.valueOf(Arrays.toString(c().toArray()));
    String str3 = String.valueOf(Arrays.toString(b().toArray()));
    String str4 = String.valueOf(ezi.b(e));
    String str5 = String.valueOf(ezi.b(f));
    return String.valueOf(str1).length() + 75 + String.valueOf(str2).length() + String.valueOf(str3).length() + String.valueOf(str4).length() + String.valueOf(str5).length() + "GaiaId {gaiaId: " + str1 + " | emails: " + str2 + " | phoneNumbers: " + str3 + " | avatarUrl: " + str4 + " | displayName: " + str5 + "}";
  }
}

/* Location:
 * Qualified Name:     bdx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */