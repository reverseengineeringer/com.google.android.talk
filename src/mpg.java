import android.net.TrafficStats;

final class mpg
  implements Runnable
{
  mpg(mpf parammpf, Runnable paramRunnable) {}
  
  public void run()
  {
    int i = TrafficStats.getThreadStatsTag();
    TrafficStats.setThreadStatsTag(b.b.g);
    try
    {
      a.run();
      return;
    }
    finally
    {
      TrafficStats.setThreadStatsTag(i);
    }
  }
}

/* Location:
 * Qualified Name:     mpg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */