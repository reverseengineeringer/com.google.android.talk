import android.net.Uri;
import java.security.MessageDigest;

final class hau
  implements aiw
{
  private final aot b;
  private String c;
  
  hau(aot paramaot)
  {
    b = paramaot;
  }
  
  private String a()
  {
    try
    {
      if (c == null) {
        c = Uri.parse(b.c()).getPath();
      }
      String str = c;
      return str;
    }
    finally {}
  }
  
  public void a(MessageDigest paramMessageDigest)
  {
    paramMessageDigest.update(a().getBytes(a));
  }
  
  public boolean equals(Object paramObject)
  {
    if ((paramObject instanceof hau))
    {
      paramObject = (hau)paramObject;
      return a().equals(((hau)paramObject).a());
    }
    return false;
  }
  
  public int hashCode()
  {
    return a().hashCode();
  }
  
  public String toString()
  {
    String str1 = String.valueOf("FifeUrlKey{glideUrl=");
    String str2 = String.valueOf(b);
    String str3 = String.valueOf(a());
    return String.valueOf(str1).length() + 9 + String.valueOf(str2).length() + String.valueOf(str3).length() + str1 + str2 + ", key='" + str3 + "'}";
  }
}

/* Location:
 * Qualified Name:     hau
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */