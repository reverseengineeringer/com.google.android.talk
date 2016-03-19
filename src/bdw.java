import java.io.Serializable;

public final class bdw
  implements Serializable
{
  private String a;
  private String b;
  
  public bdw(String paramString)
  {
    this("", paramString);
  }
  
  public bdw(String paramString1, String paramString2)
  {
    a = paramString1;
    b = paramString2;
  }
  
  public String a()
  {
    return a;
  }
  
  public String b()
  {
    return b;
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1;
    if (this == paramObject) {
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
        } while (paramObject == null);
        bool1 = bool2;
      } while (getClass() != paramObject.getClass());
      paramObject = (bdw)paramObject;
      if (a == null) {
        break;
      }
      bool1 = bool2;
    } while (!a.equals(a));
    while (a == null) {
      return b.equals(b);
    }
    return false;
  }
  
  public int hashCode()
  {
    if (a != null) {}
    for (int i = a.hashCode();; i = 0) {
      return i * 31 + b.hashCode();
    }
  }
  
  public String toString()
  {
    String str1 = String.valueOf(ezi.b(b));
    String str2 = a;
    return String.valueOf(str1).length() + 32 + String.valueOf(str2).length() + "EmailAddress {email: " + str1 + " | label: " + str2 + "}";
  }
}

/* Location:
 * Qualified Name:     bdw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */