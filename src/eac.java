import android.app.PendingIntent;
import android.app.PendingIntent.CanceledException;
import android.os.SystemClock;
import android.util.SparseArray;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;

public final class eac
  implements Runnable
{
  public eac(PendingIntent paramPendingIntent, int paramInt) {}
  
  public void run()
  {
    try
    {
      a.send();
      synchronized (RealTimeChatService.k)
      {
        RealTimeChatService.k.put(b, Long.valueOf(SystemClock.elapsedRealtime()));
        return;
      }
      return;
    }
    catch (PendingIntent.CanceledException localCanceledException) {}
  }
}

/* Location:
 * Qualified Name:     eac
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */