import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class ezi
{
  public static volatile boolean A;
  private static final Map<String, String> B;
  private static final Pattern C;
  public static final imx a = c("audioplayer");
  public static final imx b = c("callerid");
  public static final imx c = c("clearcut");
  public static final imx d = c("content");
  public static final imx e = c("cve");
  public static final imx f = c("fragment");
  public static final imx g = c("hangout");
  public static final imx h = c("latencytracker");
  public static final imx i = c("network");
  public static final imx j = c("networkqueue");
  public static final imx k = c("phone");
  public static final imx l = c("protocol");
  public static final imx m = c("pstn");
  public static final imx n = c("pstn_meta");
  public static final imx o = c("realtimechat");
  public static final imx p = c("requestwriter");
  public static final imx q = c("service");
  public static final imx r = c("sms");
  public static final imx s = c("telephony");
  public static final imx t = c("util");
  public static final imx u = c("view");
  public static final imx v = c("wear");
  public static final imw w = new imw("pii", true);
  public static final imx x = c("perf_cached");
  public static final imx y = c("tracing");
  public static hlm z;
  
  static
  {
    B = ksm.a("\t", "", "\n", " ==> ", "com.google.android.apps.hangouts", "", ".java", "");
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = B.keySet().iterator();
    while (localIterator.hasNext()) {
      localArrayList.add(Pattern.quote((String)localIterator.next()));
    }
    C = Pattern.compile(String.format("(%s)", new Object[] { knk.a("|").a(localArrayList) }));
  }
  
  public static String a(Throwable paramThrowable)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    paramThrowable = Log.getStackTraceString(paramThrowable);
    paramThrowable = C.matcher(paramThrowable);
    while (paramThrowable.find()) {
      paramThrowable.appendReplacement(localStringBuffer, (String)B.get(paramThrowable.group(1)));
    }
    paramThrowable.appendTail(localStringBuffer);
    return localStringBuffer.toString();
  }
  
  public static void a()
  {
    int i1 = 2;
    boolean bool = aal.a(aal.oJ, "babel_log_dump", false);
    A = bool;
    hlm localhlm;
    if ((bool) && (z == null))
    {
      z = new hlm();
      localhlm = z;
      if (!Log.isLoggable("vclib", 2)) {
        break label79;
      }
    }
    for (;;)
    {
      hlk.b = i1;
      hlk.a = localhlm;
      return;
      if ((A) || (z == null)) {
        break;
      }
      z = null;
      break;
      label79:
      if (Log.isLoggable("vclib", 3)) {
        i1 = 3;
      } else if (Log.isLoggable("vclib", 4)) {
        i1 = 4;
      } else if (Log.isLoggable("vclib", 5)) {
        i1 = 5;
      } else {
        i1 = 6;
      }
    }
  }
  
  public static void a(String paramString1, String paramString2, Throwable paramThrowable)
  {
    paramThrowable = String.valueOf(Log.getStackTraceString(paramThrowable));
    a(false, 3, paramString1, String.valueOf(paramString2).length() + 1 + String.valueOf(paramThrowable).length() + paramString2 + "\n" + paramThrowable, new Object[0]);
  }
  
  public static void a(String paramString1, String paramString2, Object... paramVarArgs)
  {
    a(false, 3, paramString1, paramString2, paramVarArgs);
  }
  
  private static void a(boolean paramBoolean, int paramInt, String paramString1, String paramString2, Object... paramVarArgs)
  {
    Object localObject1 = null;
    int i1;
    label47:
    Object localObject2;
    label100:
    hlm localhlm;
    if ((paramVarArgs == null) || (paramVarArgs.length > 0))
    {
      i1 = 1;
      if ((paramBoolean) || (paramInt >= 4) || (Log.isLoggable(paramString1, paramInt)))
      {
        if (i1 == 0) {
          break label157;
        }
        localObject1 = String.format(paramString2, paramVarArgs);
        Log.println(paramInt, paramString1, (String)localObject1);
      }
      localObject2 = localObject1;
      if (paramInt >= 4)
      {
        localObject2 = localObject1;
        if ("Babel_telephony".equals(paramString1))
        {
          localObject2 = localObject1;
          if (localObject1 == null)
          {
            if (i1 == 0) {
              break label163;
            }
            localObject2 = String.format(paramString2, paramVarArgs);
          }
          hgd.b((String)localObject2);
        }
      }
      localhlm = z;
      if ((localhlm != null) && (paramInt >= 3))
      {
        if (localObject2 != null) {
          break label169;
        }
        localObject1 = paramString2;
        if (i1 == 0) {}
      }
    }
    label157:
    label163:
    label169:
    for (localObject1 = String.format(paramString2, paramVarArgs);; localObject1 = localObject2)
    {
      localhlm.a(paramInt, paramString1, (String)localObject1);
      return;
      i1 = 0;
      break;
      localObject1 = paramString2;
      break label47;
      localObject2 = paramString2;
      break label100;
    }
  }
  
  public static boolean a(String paramString)
  {
    return Log.isLoggable(paramString, 3);
  }
  
  public static boolean a(String paramString, int paramInt)
  {
    boolean bool2 = false;
    boolean bool1;
    if (paramInt == 3)
    {
      bool1 = bool2;
      if (z != null) {
        bool1 = true;
      }
    }
    for (;;)
    {
      bool2 = bool1;
      if (!bool1) {
        bool2 = Log.isLoggable(paramString, paramInt);
      }
      return bool2;
      bool1 = bool2;
      if (paramInt == 2) {
        bool1 = bool2;
      }
    }
  }
  
  public static String b(String paramString)
  {
    if (Log.isLoggable("Babel", 3)) {
      return paramString;
    }
    if (paramString == null) {}
    for (int i1 = 0;; i1 = paramString.length()) {
      return 26 + "Redacted-" + i1 + "-chars";
    }
  }
  
  public static void b(String paramString1, String paramString2, Throwable paramThrowable)
  {
    paramThrowable = String.valueOf(Log.getStackTraceString(paramThrowable));
    a(true, 4, paramString1, String.valueOf(paramString2).length() + 1 + String.valueOf(paramThrowable).length() + paramString2 + "\n" + paramThrowable, new Object[0]);
  }
  
  public static void b(String paramString1, String paramString2, Object... paramVarArgs)
  {
    a(true, 3, paramString1, paramString2, paramVarArgs);
  }
  
  private static imx c(String paramString)
  {
    paramString = String.valueOf(paramString);
    if (paramString.length() != 0) {}
    for (paramString = "debug.chat.".concat(paramString);; paramString = new String("debug.chat.")) {
      return new imx(paramString, (byte)0);
    }
  }
  
  public static void c(String paramString1, String paramString2, Throwable paramThrowable)
  {
    a(true, 5, paramString1, paramString2, new Object[0]);
    a(true, 5, paramString1, Log.getStackTraceString(paramThrowable), new Object[0]);
  }
  
  public static void c(String paramString1, String paramString2, Object... paramVarArgs)
  {
    a(true, 4, paramString1, paramString2, paramVarArgs);
  }
  
  public static void d(String paramString1, String paramString2, Throwable paramThrowable)
  {
    a(true, 6, paramString1, paramString2, new Object[0]);
    a(true, 6, paramString1, Log.getStackTraceString(paramThrowable), new Object[0]);
  }
  
  public static void d(String paramString1, String paramString2, Object... paramVarArgs)
  {
    a(true, 5, paramString1, paramString2, paramVarArgs);
  }
  
  public static void e(String paramString1, String paramString2, Object... paramVarArgs)
  {
    a(true, 6, paramString1, paramString2, paramVarArgs);
  }
}

/* Location:
 * Qualified Name:     ezi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */