import java.io.Serializable;

public final class dyl
  implements Serializable
{
  public boolean a;
  public String b;
  public String c;
  public String d;
  
  public String toString()
  {
    boolean bool = a;
    String str1 = b;
    String str2 = c;
    String str3 = d;
    return String.valueOf(str1).length() + 73 + String.valueOf(str2).length() + String.valueOf(str3).length() + "MergedPerson{isHangoutsReachable=" + bool + ", gaiaId='" + str1 + "', avatarUrl='" + str2 + "', name='" + str3 + "'}";
  }
}

/* Location:
 * Qualified Name:     dyl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */