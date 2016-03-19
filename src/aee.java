import android.content.Context;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Patterns;
import java.util.HashSet;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class aee
{
  public static a a;
  public static final Pattern b = Pattern.compile("\\s*(\"[^\"]*\"|[^<>\"]+)\\s*<([^<>]+)>\\s*");
  private static String c;
  private static TelephonyManager d;
  private static final char[] e = { 45, 46, 44, 40, 41, 32, 47, 92, 42, 35, 43 };
  private static HashSet f = new HashSet(e.length);
  
  static
  {
    int i = 0;
    while (i < e.length)
    {
      f.add(Character.valueOf(e[i]));
      i += 1;
    }
  }
  
  public static String a(Context paramContext)
  {
    if (c == null) {
      c = b(paramContext).getLine1Number();
    }
    return c;
  }
  
  public static String a(String paramString)
  {
    Matcher localMatcher = b.matcher(paramString);
    if (localMatcher.matches()) {
      paramString = localMatcher.group(2);
    }
    return paramString;
  }
  
  private static TelephonyManager b(Context paramContext)
  {
    try
    {
      if (d == null) {
        d = (TelephonyManager)paramContext.getSystemService("phone");
      }
      return d;
    }
    finally {}
  }
  
  public static boolean b(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return false;
    }
    paramString = a(paramString);
    return Patterns.EMAIL_ADDRESS.matcher(paramString).matches();
  }
}

/* Location:
 * Qualified Name:     aee
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */