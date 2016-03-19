import java.io.Serializable;

public final class bjn
  implements Serializable
{
  public final bdx a;
  public final bee b;
  public final bdw c;
  
  public bjn(bdw parambdw)
  {
    a = null;
    b = null;
    c = parambdw;
  }
  
  public bjn(bdx parambdx)
  {
    a = parambdx;
    b = null;
    c = null;
  }
  
  public bjn(bee parambee)
  {
    a = null;
    b = parambee;
    c = null;
  }
  
  public String toString()
  {
    String str1 = String.valueOf(a);
    String str2 = String.valueOf(b);
    String str3 = String.valueOf(c);
    return String.valueOf(str1).length() + 50 + String.valueOf(str2).length() + String.valueOf(str3).length() + "ContactDetail {gaiaId: " + str1 + " | phoneNumber: " + str2 + " | email: " + str3 + "}";
  }
}

/* Location:
 * Qualified Name:     bjn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */