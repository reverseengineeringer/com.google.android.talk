import android.util.Log;

public final class hlk
{
  public static hlm a;
  public static int b;
  
  static
  {
    int i = 2;
    if (Log.isLoggable("vclib", 2)) {}
    for (;;)
    {
      b = i;
      return;
      if (Log.isLoggable("vclib", 3)) {
        i = 3;
      } else if (Log.isLoggable("vclib", 4)) {
        i = 4;
      } else if (Log.isLoggable("vclib", 5)) {
        i = 5;
      } else {
        i = 6;
      }
    }
  }
  
  public static String a(String paramString)
  {
    if (a(3)) {
      return paramString;
    }
    if (paramString == null) {}
    for (int i = 0;; i = paramString.length()) {
      return 20 + "Redacted-" + i;
    }
  }
  
  public static void a(int paramInt, String paramString1, String paramString2)
  {
    if (paramInt >= b) {
      Log.println(paramInt, paramString1, paramString2);
    }
    hlm localhlm = a;
    if ((localhlm != null) && (paramInt >= 3)) {
      localhlm.a(paramInt, paramString1, paramString2);
    }
  }
  
  public static void a(int paramInt, String paramString1, String paramString2, Throwable paramThrowable)
  {
    if (a(paramInt))
    {
      String str = String.valueOf(paramThrowable.toString());
      paramThrowable = String.valueOf(Log.getStackTraceString(paramThrowable));
      a(paramInt, paramString1, String.valueOf(paramString2).length() + 2 + String.valueOf(str).length() + String.valueOf(paramThrowable).length() + paramString2 + "\n" + str + "\n" + paramThrowable);
    }
  }
  
  public static void a(int paramInt, String paramString1, String paramString2, Object... paramVarArgs)
  {
    if (a(3)) {
      a(3, paramString1, String.format(paramString2, paramVarArgs));
    }
  }
  
  public static void a(String paramString1, String paramString2)
  {
    a(6, paramString1, paramString2);
    Log.wtf(paramString1, paramString2);
    if (a()) {
      throw new AssertionError(paramString2);
    }
  }
  
  public static void a(String paramString1, String paramString2, Throwable paramThrowable)
  {
    a(6, paramString1, paramString2, paramThrowable);
  }
  
  public static void a(String paramString1, String paramString2, Object... paramVarArgs)
  {
    a(4, paramString1, String.format(paramString2, paramVarArgs));
  }
  
  public static boolean a()
  {
    return 2 >= b;
  }
  
  public static boolean a(int paramInt)
  {
    return (paramInt >= b) || ((a != null) && (paramInt >= 3));
  }
  
  public static void b(String paramString1, String paramString2, Throwable paramThrowable)
  {
    a(paramString1, paramString2, paramThrowable);
    Log.wtf(paramString1, paramString2, paramThrowable);
    if (a()) {
      throw new AssertionError(paramString2);
    }
  }
  
  public static void b(String paramString1, String paramString2, Object... paramVarArgs)
  {
    a(5, paramString1, String.format(paramString2, paramVarArgs));
  }
  
  public static void c(String paramString1, String paramString2, Object... paramVarArgs)
  {
    a(6, paramString1, String.format(paramString2, paramVarArgs));
  }
}

/* Location:
 * Qualified Name:     hlk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */