import android.media.AudioManager;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.PowerManager.WakeLock;
import android.os.SystemClock;
import java.util.LinkedList;

public final class eyh
  implements MediaPlayer.OnCompletionListener
{
  Handler a = new Handler();
  final LinkedList<eyk> b = new LinkedList();
  Looper c;
  String d;
  eyj e;
  MediaPlayer f;
  PowerManager.WakeLock g;
  AudioManager h;
  private eyl i;
  private final Object j = new Object();
  private int k = 2;
  
  public eyh(String paramString)
  {
    d = paramString;
  }
  
  private void b(eyk parameyk)
  {
    b.add(parameyk);
    if (e == null)
    {
      if (g != null) {
        g.acquire();
      }
      e = new eyj(this);
      e.start();
    }
  }
  
  public void a(Uri arg1)
  {
    eyk localeyk = new eyk();
    f = SystemClock.elapsedRealtime();
    a = 1;
    b = ???;
    c = true;
    d = 2;
    e = 1.0F;
    synchronized (b)
    {
      b(localeyk);
      k = 1;
      return;
    }
  }
  
  void a(eyk parameyk)
  {
    try
    {
      synchronized (j)
      {
        if ((c != null) && (c.getThread().getState() != Thread.State.TERMINATED)) {
          c.quit();
        }
        i = new eyl(this, parameyk);
        synchronized (i)
        {
          i.start();
          i.wait();
          long l = SystemClock.elapsedRealtime() - f;
          if (l > 1000L) {
            ezi.d(d, 55 + "Notification sound delayed by " + l + "msecs", new Object[0]);
          }
          return;
        }
      }
      String str;
      return;
    }
    catch (Exception localException)
    {
      str = d;
      parameyk = String.valueOf(b);
      ezi.c(str, String.valueOf(parameyk).length() + 24 + "error loading sound for " + parameyk, localException);
    }
  }
  
  public void a(boolean paramBoolean)
  {
    synchronized (b)
    {
      if (k != 2)
      {
        eyk localeyk = new eyk();
        f = SystemClock.elapsedRealtime();
        a = 2;
        g = paramBoolean;
        b(localeyk);
        k = 2;
      }
      return;
    }
  }
  
  public void onCompletion(MediaPlayer arg1)
  {
    if (h != null) {
      h.abandonAudioFocus(null);
    }
    synchronized (b)
    {
      if (b.size() == 0) {}
      synchronized (j)
      {
        if (c != null) {
          c.quit();
        }
        i = null;
        return;
      }
    }
  }
}

/* Location:
 * Qualified Name:     eyh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */