import android.os.Process;

final class mpd
  implements Runnable
{
  mpd(mpc parammpc, Runnable paramRunnable) {}
  
  public void run()
  {
    Thread.currentThread().setName("JavaCronetEngine");
    Process.setThreadPriority(9);
    a.run();
  }
}

/* Location:
 * Qualified Name:     mpd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */