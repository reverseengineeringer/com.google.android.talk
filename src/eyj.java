import android.media.AudioManager;
import android.media.MediaPlayer;
import android.os.Handler;
import android.os.Looper;
import android.os.PowerManager.WakeLock;
import android.os.SystemClock;
import java.util.LinkedList;

final class eyj
  extends Thread
{
  eyj(eyh parameyh) {}
  
  public void run()
  {
    for (;;)
    {
      Object localObject2;
      synchronized (a.b)
      {
        localObject2 = (eyk)a.b.removeFirst();
        switch (a)
        {
        }
      }
      synchronized (a.b)
      {
        do
        {
          while (a.b.size() == 0)
          {
            a.e = null;
            localObject2 = a;
            if (g != null) {
              g.release();
            }
            return;
            localeyk = finally;
            throw localeyk;
            a.a(localeyk);
          }
          ??? = a;
        } while (f == null);
        long l = SystemClock.elapsedRealtime() - f;
        if (l > 1000L) {
          ezi.d(d, 54 + "Notification stop delayed by " + l + "msecs", new Object[0]);
        }
        f.stop();
        f.release();
        f = null;
        if (h != null)
        {
          if (!g) {
            break label284;
          }
          a.postDelayed(new eyi((eyh)???), 3000L);
        }
        while ((c != null) && (c.getThread().getState() != Thread.State.TERMINATED))
        {
          c.quit();
          break;
          label284:
          h.abandonAudioFocus(null);
          h = null;
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     eyj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */