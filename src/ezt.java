import android.os.Trace;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

final class ezt
  extends ezs
{
  private static Method a;
  private static Method b;
  private static Method c;
  
  ezt()
  {
    super((byte)0);
    try
    {
      Object localObject = new Class[3];
      localObject[0] = Long.TYPE;
      localObject[1] = String.class;
      localObject[2] = Integer.TYPE;
      a = Trace.class.getDeclaredMethod("asyncTraceBegin", (Class[])localObject);
      b = Trace.class.getDeclaredMethod("asyncTraceEnd", (Class[])localObject);
      a.setAccessible(true);
      b.setAccessible(true);
      localObject = Trace.class.getDeclaredMethod("traceCounter", (Class[])localObject);
      c = (Method)localObject;
      ((Method)localObject).setAccessible(true);
      return;
    }
    catch (Exception localException)
    {
      ezi.d("Babel_Trace", "No async tracer available.", localException);
    }
  }
  
  void a(String paramString)
  {
    if (a != null) {}
    try
    {
      a.invoke(null, new Object[] { Long.valueOf(4096L), paramString, Integer.valueOf(0) });
      return;
    }
    catch (IllegalAccessException paramString) {}catch (InvocationTargetException paramString) {}
  }
  
  void b(String paramString)
  {
    if (b != null) {}
    try
    {
      b.invoke(null, new Object[] { Long.valueOf(4096L), paramString, Integer.valueOf(0) });
      return;
    }
    catch (IllegalAccessException paramString) {}catch (InvocationTargetException paramString) {}
  }
  
  void c(String paramString)
  {
    if (c != null) {}
    try
    {
      c.invoke(null, new Object[] { Long.valueOf(4096L), paramString, Integer.valueOf(0) });
      return;
    }
    catch (IllegalAccessException paramString) {}catch (InvocationTargetException paramString) {}
  }
}

/* Location:
 * Qualified Name:     ezt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */