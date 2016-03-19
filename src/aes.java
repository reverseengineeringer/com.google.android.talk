import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public final class aes
{
  private static Method a = null;
  
  public static String a(String paramString)
  {
    if (a == null) {}
    try
    {
      Class localClass = Class.forName("android.os.SystemProperties");
      if (localClass != null) {
        a = localClass.getMethod("get", new Class[] { String.class });
      }
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      for (;;) {}
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      for (;;) {}
    }
    if (a != null) {}
    try
    {
      paramString = (String)a.invoke(null, new Object[] { paramString });
      return paramString;
    }
    catch (InvocationTargetException paramString)
    {
      return null;
    }
    catch (IllegalAccessException paramString)
    {
      for (;;) {}
    }
    catch (IllegalArgumentException paramString)
    {
      for (;;) {}
    }
  }
}

/* Location:
 * Qualified Name:     aes
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */