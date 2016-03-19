import android.os.Process;
import android.os.StrictMode;

final class jrk
  implements Runnable
{
  jrk(jrj paramjrj, Runnable paramRunnable) {}
  
  public void run()
  {
    StrictMode.setThreadPolicy(jri.a);
    Process.setThreadPriority(0);
    a.run();
  }
}

/* Location:
 * Qualified Name:     jrk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */