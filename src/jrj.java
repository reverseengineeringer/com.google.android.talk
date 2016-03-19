import java.util.concurrent.ThreadFactory;

final class jrj
  implements ThreadFactory
{
  public Thread newThread(Runnable paramRunnable)
  {
    return new Thread(new jrk(this, paramRunnable));
  }
}

/* Location:
 * Qualified Name:     jrj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */