import java.io.Serializable;

public final class bee
  implements Serializable
{
  private final String a;
  private final String b;
  private final String c;
  private final String d;
  private final boolean e;
  
  public bee(String paramString)
  {
    this("", paramString, paramString, paramString, false);
  }
  
  public bee(String paramString1, String paramString2, String paramString3, String paramString4, boolean paramBoolean)
  {
    a = paramString1;
    b = paramString2;
    d = paramString3;
    c = paramString4;
    e = paramBoolean;
  }
  
  public String a()
  {
    return a;
  }
  
  public String b()
  {
    return b;
  }
  
  public String c()
  {
    return c;
  }
  
  public String d()
  {
    return d;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if ((paramObject == null) || (getClass() != paramObject.getClass())) {
        return false;
      }
      paramObject = (bee)paramObject;
      if (a != null)
      {
        if (a.equals(a)) {}
      }
      else {
        while (a != null) {
          return false;
        }
      }
      if (!b.equals(b)) {
        return false;
      }
      if (d == null) {
        break;
      }
    } while (d.equals(d));
    while (d != null) {
      return false;
    }
    return true;
  }
  
  public int hashCode()
  {
    int j = 0;
    if (a != null) {}
    for (int i = a.hashCode();; i = 0)
    {
      int k = b.hashCode();
      if (d != null) {
        j = d.hashCode();
      }
      return (i * 31 + k) * 31 + j;
    }
  }
  
  public String toString()
  {
    String str1 = String.valueOf(ezi.b(b));
    String str2 = a;
    return String.valueOf(str1).length() + 32 + String.valueOf(str2).length() + "PhoneNumber {number: " + str1 + " | label: " + str2 + "}";
  }
}

/* Location:
 * Qualified Name:     bee
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */