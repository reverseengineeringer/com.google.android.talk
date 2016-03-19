import java.util.concurrent.ThreadFactory;

final class aid
  implements ThreadFactory
{
  public Thread newThread(Runnable paramRunnable)
  {
    try
    {
      paramRunnable = new Thread(paramRunnable, "glide-disk-lru-cache-thread");
      paramRunnable.setPriority(1);
      return paramRunnable;
    }
    finally
    {
      paramRunnable = finally;
      throw paramRunnable;
    }
  }
}

/* Location:
 * Qualified Name:     aid
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */