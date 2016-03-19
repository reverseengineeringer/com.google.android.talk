import android.os.Handler;
import android.os.Looper;
import com.google.android.apps.hangouts.requestwriter.RequestWriter;

public final class eex
  extends Thread
{
  public Handler a;
  private final Object c = new Object();
  
  public eex(RequestWriter paramRequestWriter) {}
  
  public void run()
  {
    Looper.prepare();
    eey localeey = new eey(b);
    synchronized (c)
    {
      a = localeey;
      c.notify();
      Looper.loop();
      return;
    }
  }
  
  public void start()
  {
    super.start();
    synchronized (c)
    {
      for (;;)
      {
        Handler localHandler = a;
        if (localHandler != null) {
          break;
        }
        try
        {
          c.wait();
        }
        catch (InterruptedException localInterruptedException) {}
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     eex
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */