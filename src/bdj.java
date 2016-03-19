import com.google.android.apps.hangouts.concurrent.impl.ConcurrentServiceImpl;

public final class bdj
  implements Runnable
{
  public bdj(ConcurrentServiceImpl paramConcurrentServiceImpl) {}
  
  public void run()
  {
    synchronized (a)
    {
      a.c.e();
      return;
    }
  }
}

/* Location:
 * Qualified Name:     bdj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */