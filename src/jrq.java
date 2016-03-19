import android.os.Process;

final class jrq
  implements Runnable
{
  jrq(jrp paramjrp, Runnable paramRunnable) {}
  
  public void run()
  {
    Process.setThreadPriority(11);
    a.run();
  }
}

/* Location:
 * Qualified Name:     jrq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */