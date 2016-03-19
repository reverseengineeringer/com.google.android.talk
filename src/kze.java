import java.io.Closeable;
import java.lang.reflect.Method;

final class kze
  implements kzf
{
  static final kze a = new kze();
  static final Method b = a();
  
  private static Method a()
  {
    try
    {
      Method localMethod = Throwable.class.getMethod("addSuppressed", new Class[] { Throwable.class });
      return localMethod;
    }
    catch (Throwable localThrowable) {}
    return null;
  }
  
  public void a(Closeable paramCloseable, Throwable paramThrowable1, Throwable paramThrowable2)
  {
    if (paramThrowable1 == paramThrowable2) {
      return;
    }
    try
    {
      b.invoke(paramThrowable1, new Object[] { paramThrowable2 });
      return;
    }
    catch (Throwable localThrowable)
    {
      kzd.a.a(paramCloseable, paramThrowable1, paramThrowable2);
    }
  }
}

/* Location:
 * Qualified Name:     kze
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */