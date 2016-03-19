import java.util.concurrent.locks.Lock;

abstract class fjh
  implements Runnable
{
  fjh(fiv paramfiv) {}
  
  protected abstract void a();
  
  public void run()
  {
    b.b.lock();
    try
    {
      boolean bool = Thread.interrupted();
      if (bool) {
        return;
      }
      a();
      return;
    }
    catch (RuntimeException localRuntimeException)
    {
      b.a.a(localRuntimeException);
      return;
    }
    finally
    {
      b.b.unlock();
    }
  }
}

/* Location:
 * Qualified Name:     fjh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */