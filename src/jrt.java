import java.lang.ref.ReferenceQueue;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;

final class jrt
  implements Runnable
{
  jrt(jrs paramjrs) {}
  
  public void run()
  {
    try
    {
      a.a.remove()).b.b(null);
      Iterator localIterator1;
      try
      {
        a.b.execute(this);
        return;
      }
      catch (RejectedExecutionException localRejectedExecutionException1)
      {
        synchronized (jru.a)
        {
          localIterator1 = jru.a.iterator();
          if (localIterator1.hasNext()) {
            ((lbl)localIterator1.next()).a(localRejectedExecutionException1);
          }
        }
        return;
      }
      try
      {
        a.b.execute(this);
        throw ((Throwable)localObject3);
      }
      catch (RejectedExecutionException localRejectedExecutionException3)
      {
        for (;;)
        {
          synchronized (jru.a)
          {
            Iterator localIterator2 = jru.a.iterator();
            if (localIterator2.hasNext()) {
              ((lbl)localIterator2.next()).a(localRejectedExecutionException3);
            }
          }
        }
      }
    }
    catch (InterruptedException localInterruptedException)
    {
      localInterruptedException = localInterruptedException;
      try
      {
        a.b.execute(this);
        return;
      }
      catch (RejectedExecutionException localRejectedExecutionException2)
      {
        synchronized (jru.a)
        {
          localIterator1 = jru.a.iterator();
          if (localIterator1.hasNext()) {
            ((lbl)localIterator1.next()).a(localRejectedExecutionException2);
          }
        }
        return;
      }
    }
    finally
    {
      localObject3 = finally;
    }
  }
}

/* Location:
 * Qualified Name:     jrt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */