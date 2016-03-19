import android.text.TextUtils;
import java.io.Serializable;

public final class bzv
  extends bzs
  implements Serializable
{
  public final String a;
  public final String b;
  
  public bzv(String paramString1, String paramString2)
  {
    a = paramString1;
    b = paramString2;
  }
  
  public String a()
  {
    String str2 = String.valueOf(ezm.p(a));
    String str1;
    if (TextUtils.isEmpty(b)) {
      str1 = "";
    }
    for (;;)
    {
      str1 = String.valueOf(str1);
      if (str1.length() == 0) {
        break;
      }
      return str2.concat(str1);
      str1 = String.valueOf(b);
      if (str1.length() != 0) {
        str1 = " ".concat(str1);
      } else {
        str1 = new String(" ");
      }
    }
    return new String(str2);
  }
  
  public String b()
  {
    return b;
  }
  
  public String toString()
  {
    return a;
  }
}

/* Location:
 * Qualified Name:     bzv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */