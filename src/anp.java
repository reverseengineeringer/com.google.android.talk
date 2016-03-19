import android.os.Process;
import android.os.StrictMode;
import android.os.StrictMode.ThreadPolicy.Builder;

final class anp
  extends Thread
{
  anp(ano paramano, Runnable paramRunnable, String paramString)
  {
    super(paramRunnable, paramString);
  }
  
  public void run()
  {
    Process.setThreadPriority(10);
    if (a.b) {
      StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder().detectNetwork().penaltyDeath().build());
    }
    try
    {
      super.run();
      return;
    }
    catch (Throwable localThrowable)
    {
      a.a.a(localThrowable);
    }
  }
}

/* Location:
 * Qualified Name:     anp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */