import android.os.Looper;
import android.util.Log;

public final class hbs
{
  public static volatile boolean a = true;
  public static volatile boolean b = true;
  
  public static void a()
  {
    if (!b) {}
    while ((Looper.myLooper() == Looper.getMainLooper()) || (Thread.currentThread().getName().contains("test"))) {
      return;
    }
    String str = String.valueOf(Looper.myLooper());
    throw new AssertionError(String.valueOf(str).length() + 32 + "Expected main thread instead of " + str);
  }
  
  public static void a(int paramInt1, int paramInt2, int paramInt3)
  {
    a("", paramInt1, paramInt2, paramInt3);
  }
  
  public static void a(Object paramObject1, Object paramObject2)
  {
    try
    {
      String str1 = String.format("Expected %s and %s to be equal.", new Object[] { paramObject1, paramObject2 });
      a(str1, paramObject1, paramObject2);
      return;
    }
    catch (Throwable localThrowable)
    {
      for (;;)
      {
        String str2 = "Expected objects to be equal.";
      }
    }
  }
  
  public static void a(String paramString)
  {
    if (a) {
      throw new AssertionError(paramString);
    }
  }
  
  public static void a(String paramString, int paramInt1, int paramInt2, int paramInt3)
  {
    if ((a) && ((paramInt1 < paramInt2) || (paramInt1 > paramInt3)))
    {
      Log.e("vclib", String.format("Expected value in range [%d, %d], but was %d. %s", new Object[] { Integer.valueOf(paramInt2), Integer.valueOf(paramInt3), Integer.valueOf(paramInt1), paramString }));
      throw new AssertionError(String.format("Value is out of range [%d, %d]", new Object[] { Integer.valueOf(paramInt2), Integer.valueOf(paramInt3) }));
    }
  }
  
  public static void a(String paramString, Object paramObject)
  {
    if ((a) && (paramObject != null)) {
      throw new AssertionError(paramString);
    }
  }
  
  public static void a(String paramString, Object paramObject1, Object paramObject2)
  {
    if (a) {
      if (paramObject1 == null)
      {
        if (paramObject2 == null) {}
      }
      else {
        while (!paramObject1.equals(paramObject2))
        {
          Log.e("vclib", paramString);
          throw new AssertionError("Expected objects to be equal.");
        }
      }
    }
  }
  
  public static void a(String paramString, boolean paramBoolean)
  {
    if ((a) && (!paramBoolean)) {
      throw new AssertionError(paramString);
    }
  }
  
  public static void a(boolean paramBoolean)
  {
    b("Expected condition to be false", paramBoolean);
  }
  
  public static <T> T b(String paramString, T paramT)
  {
    if ((a) && (paramT == null)) {
      throw new AssertionError(paramString);
    }
    return paramT;
  }
  
  public static void b()
  {
    if (!b) {}
    while (Looper.myLooper() != Looper.getMainLooper()) {
      return;
    }
    throw new AssertionError("Main thread unexpected");
  }
  
  public static void b(Object paramObject1, Object paramObject2)
  {
    try
    {
      String str1 = String.format("Expected different objects in %s and %s.", new Object[] { paramObject1, paramObject2 });
      b(str1, paramObject1, paramObject2);
      return;
    }
    catch (Throwable localThrowable)
    {
      for (;;)
      {
        String str2 = "Expected objects to be not equal.";
      }
    }
  }
  
  public static void b(String paramString, Object paramObject1, Object paramObject2)
  {
    if ((a) && (paramObject1 == paramObject2))
    {
      Log.e("vclib", paramString);
      throw new AssertionError("Expected objects to be not equal.");
    }
  }
  
  public static void b(String paramString, boolean paramBoolean)
  {
    if ((a) && (paramBoolean)) {
      throw new AssertionError(paramString);
    }
  }
  
  public static void c()
  {
    if (!b) {}
    while ((Thread.currentThread().getName().startsWith("GLThread")) || (Thread.currentThread().getName().contains("test"))) {
      return;
    }
    String str = String.valueOf(Thread.currentThread());
    throw new AssertionError(String.valueOf(str).length() + 40 + "Expected GL rendering thread instead of " + str);
  }
  
  public static void d()
  {
    if (!b) {}
    while ((Thread.currentThread().getName().equals("CameraOpenThread")) || (Thread.currentThread().getName().contains("test"))) {
      return;
    }
    String str = String.valueOf(Thread.currentThread());
    throw new AssertionError(String.valueOf(str).length() + 49 + "Expected CameraOpen background thread instead of " + str);
  }
  
  public static void e()
  {
    if (!b) {}
    while ((Thread.currentThread().getName().equals("DecoderHandlerThread")) || (Thread.currentThread().getName().contains("test"))) {
      return;
    }
    String str = String.valueOf(Thread.currentThread());
    throw new AssertionError(String.valueOf(str).length() + 35 + "Expected Decoder thread instead of " + str);
  }
  
  public static void f()
  {
    if (!b) {}
    while ((Thread.currentThread().getName().equals("EncoderHandlerThread")) || (Thread.currentThread().getName().contains("test"))) {
      return;
    }
    String str = String.valueOf(Thread.currentThread());
    throw new AssertionError(String.valueOf(str).length() + 35 + "Expected Encoder thread instead of " + str);
  }
}

/* Location:
 * Qualified Name:     hbs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */