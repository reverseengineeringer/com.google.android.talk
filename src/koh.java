import java.lang.reflect.Method;

public final class koh
{
  private static final Object a;
  private static final Method b;
  private static final Method c;
  
  static
  {
    Object localObject2 = null;
    Object localObject1 = a();
    a = localObject1;
    if (localObject1 == null)
    {
      localObject1 = null;
      b = (Method)localObject1;
      if (a != null) {
        break label57;
      }
    }
    label57:
    for (localObject1 = localObject2;; localObject1 = a("getStackTraceDepth", new Class[] { Throwable.class }))
    {
      c = (Method)localObject1;
      return;
      localObject1 = a("getStackTraceElement", new Class[] { Throwable.class, Integer.TYPE });
      break;
    }
  }
  
  private static Object a()
  {
    try
    {
      Object localObject = Class.forName("sun.misc.SharedSecrets", false, null).getMethod("getJavaLangAccess", new Class[0]).invoke(null, new Object[0]);
      return localObject;
    }
    catch (ThreadDeath localThreadDeath)
    {
      throw localThreadDeath;
    }
    catch (Throwable localThrowable) {}
    return null;
  }
  
  public static RuntimeException a(Throwable paramThrowable)
  {
    b((Throwable)fii.a(paramThrowable));
    throw new RuntimeException(paramThrowable);
  }
  
  private static Method a(String paramString, Class<?>... paramVarArgs)
  {
    try
    {
      paramString = Class.forName("sun.misc.JavaLangAccess", false, null).getMethod(paramString, paramVarArgs);
      return paramString;
    }
    catch (ThreadDeath paramString)
    {
      throw paramString;
    }
    catch (Throwable paramString) {}
    return null;
  }
  
  public static <X extends Throwable> void a(Throwable paramThrowable, Class<X> paramClass)
  {
    b(paramThrowable, paramClass);
    b(paramThrowable);
  }
  
  private static void b(Throwable paramThrowable)
  {
    b(paramThrowable, Error.class);
    b(paramThrowable, RuntimeException.class);
  }
  
  private static <X extends Throwable> void b(Throwable paramThrowable, Class<X> paramClass)
  {
    if ((paramThrowable != null) && (paramClass.isInstance(paramThrowable))) {
      throw ((Throwable)paramClass.cast(paramThrowable));
    }
  }
}

/* Location:
 * Qualified Name:     koh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */