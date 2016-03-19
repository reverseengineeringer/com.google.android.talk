import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;

final class ibx
  implements ThreadFactory
{
  public Thread newThread(Runnable paramRunnable)
  {
    paramRunnable = Executors.defaultThreadFactory().newThread(paramRunnable);
    paramRunnable.setName("Login Manager Threadpool");
    return paramRunnable;
  }
}

/* Location:
 * Qualified Name:     ibx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */