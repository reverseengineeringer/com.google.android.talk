import android.os.Process;
import android.os.StrictMode;
import com.google.android.apps.hangouts.concurrent.impl.ConcurrentServiceImpl;

final class bdg
  implements Runnable
{
  bdg(bdf parambdf, Runnable paramRunnable) {}
  
  public void run()
  {
    StrictMode.setThreadPolicy(ConcurrentServiceImpl.a);
    Process.setThreadPriority(0);
    a.run();
  }
}

/* Location:
 * Qualified Name:     bdg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */