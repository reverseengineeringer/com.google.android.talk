import android.content.Context;
import android.content.res.Resources;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class enu
{
  private static final env a = new env(1, 109);
  private static final Pattern b = Pattern.compile("([1-9]+\\d*)(w|m|y)");
  
  public static String a(env paramenv)
  {
    Resources localResources = aal.oJ.getResources();
    switch (b)
    {
    default: 
      int i = b;
      throw new IllegalArgumentException(48 + "SmsAutoDelete: invalid duration unit " + i);
    case 119: 
      return localResources.getQuantityString(aal.hE, a, new Object[] { Integer.valueOf(a) });
    case 109: 
      return localResources.getQuantityString(aal.hs, a, new Object[] { Integer.valueOf(a) });
    }
    return localResources.getQuantityString(aal.hF, a, new Object[] { Integer.valueOf(a) });
  }
  
  public static void a(int paramInt, long paramLong)
  {
    switch (paramInt)
    {
    default: 
      ezi.e("Babel_SMS", 51 + "SmsStorageStatusManager: invalid action " + paramInt, new Object[0]);
      return;
    case 0: 
      bft.b();
      return;
    case 1: 
      bft.a(paramLong);
      return;
    }
    bft.a(paramLong);
    ((eot)ilh.a(aal.oJ, eot.class)).o();
  }
  
  public static boolean a()
  {
    return ((eot)ilh.a(aal.oJ, eot.class)).n();
  }
  
  public static long b(env paramenv)
  {
    switch (b)
    {
    default: 
      return -1L;
    case 119: 
      return a * 604800000L;
    case 109: 
      return a * 2592000000L;
    }
    return a * 31536000000L;
  }
  
  public static env b()
  {
    String str = aal.a(aal.oJ, "babel_sms_storage_purging_message_retaining_duration", "1m");
    Object localObject = b.matcher(str);
    try
    {
      if (((Matcher)localObject).matches())
      {
        localObject = new env(Integer.parseInt(((Matcher)localObject).group(1)), ((Matcher)localObject).group(2).charAt(0));
        return (env)localObject;
      }
    }
    catch (NumberFormatException localNumberFormatException)
    {
      str = String.valueOf(str);
      if (str.length() == 0) {}
    }
    for (str = "SmsAutoDelete: invalid duration ".concat(str);; str = new String("SmsAutoDelete: invalid duration "))
    {
      ezi.e("Babel_SMS", str, new Object[0]);
      return a;
    }
  }
}

/* Location:
 * Qualified Name:     enu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */