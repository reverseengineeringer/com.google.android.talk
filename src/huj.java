import android.content.Context;

final class huj
  implements Runnable
{
  huj(hug paramhug, htu paramhtu) {}
  
  public void run()
  {
    boolean bool = false;
    htu localhtu = a;
    Context localContext = b.a;
    hus localhus = new hus(false);
    if (localContext == null) {}
    for (;;)
    {
      try
      {
        if (localhtu.e() == null)
        {
          aen.a(bool, "You must provide a Context with your background task, or if you're using deprecated methods, you must provide your BackgroundTask with a Context.");
          localObject5 = localhtu.a();
          Object localObject1 = localObject5;
          if (localObject5 == null)
          {
            localObject1 = localObject5;
            if (localContext != null) {
              localObject1 = localhtu.a(localContext);
            }
          }
          if (localObject1 == null)
          {
            localObject1 = String.valueOf(localhtu.getClass());
            throw new AssertionError(String.valueOf(localObject1).length() + 31 + "Null result in BackgroundTask: " + (String)localObject1);
          }
        }
      }
      catch (Throwable localThrowable1)
      {
        localThrowable1 = localThrowable1;
        Object localObject5 = Thread.getDefaultUncaughtExceptionHandler();
        if (localObject5 != null) {
          ((Thread.UncaughtExceptionHandler)localObject5).uncaughtException(Thread.currentThread(), localThrowable1);
        }
        try
        {
          e.a(localhtu, localhus);
          localhtu.d(localContext);
          return;
        }
        finally
        {
          localObject3 = finally;
          localhtu.d(localContext);
        }
        localThrowable1.a(f);
        b = juc.a();
        try
        {
          e.a(localhtu, localThrowable1);
          return;
        }
        finally
        {
          localhtu.d(localContext);
        }
        throw new RuntimeException(localThrowable2);
      }
      finally {}
      bool = true;
    }
  }
}

/* Location:
 * Qualified Name:     huj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */