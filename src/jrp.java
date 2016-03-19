import java.util.concurrent.ThreadFactory;

public final class jrp
  implements ThreadFactory
{
  public Thread newThread(Runnable paramRunnable)
  {
    return new Thread(new jrq(this, paramRunnable));
  }
}

/* Location:
 * Qualified Name:     jrp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */