import android.util.Log;
import java.util.Locale;

public class ahb
{
  public static String a = "Volley";
  public static boolean b = Log.isLoggable("Volley", 2);
  
  public static void a(String paramString, Object... paramVarArgs)
  {
    if (b) {
      d(paramString, paramVarArgs);
    }
  }
  
  public static void b(String paramString, Object... paramVarArgs)
  {
    d(paramString, paramVarArgs);
  }
  
  public static void c(String paramString, Object... paramVarArgs)
  {
    Log.e(a, d(paramString, paramVarArgs));
  }
  
  public static String d(String paramString, Object... paramVarArgs)
  {
    int i;
    label20:
    String str;
    if (paramVarArgs == null)
    {
      paramVarArgs = new Throwable().fillInStackTrace().getStackTrace();
      i = 2;
      if (i >= paramVarArgs.length) {
        break label154;
      }
      if (paramVarArgs[i].getClass().equals(ahb.class)) {
        break label147;
      }
      str = paramVarArgs[i].getClassName();
      str = str.substring(str.lastIndexOf('.') + 1);
      str = str.substring(str.lastIndexOf('$') + 1);
    }
    label147:
    label154:
    for (paramVarArgs = str + "." + paramVarArgs[i].getMethodName();; paramVarArgs = "<unknown>")
    {
      return String.format(Locale.US, "[%d] %s: %s", new Object[] { Long.valueOf(Thread.currentThread().getId()), paramVarArgs, paramString });
      paramString = String.format(Locale.US, paramString, paramVarArgs);
      break;
      i += 1;
      break label20;
    }
  }
}

/* Location:
 * Qualified Name:     ahb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */