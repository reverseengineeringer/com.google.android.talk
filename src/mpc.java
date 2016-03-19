import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;

final class mpc
  implements ThreadFactory
{
  mpc(mpb parammpb) {}
  
  public Thread newThread(Runnable paramRunnable)
  {
    return Executors.defaultThreadFactory().newThread(new mpd(this, paramRunnable));
  }
}

/* Location:
 * Qualified Name:     mpc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */