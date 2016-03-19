import android.content.Context;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnErrorListener;
import android.media.MediaPlayer.OnPreparedListener;
import android.os.Handler;
import java.io.IOException;

final class ere
  implements MediaPlayer.OnErrorListener, MediaPlayer.OnPreparedListener
{
  private final Context a;
  private final int b;
  private final Handler c = new Handler();
  private MediaPlayer d;
  private boolean e;
  private boolean f;
  
  ere(Context paramContext, int paramInt)
  {
    a = paramContext;
    b = paramInt;
  }
  
  void a()
  {
    int i = b;
    ezi.c("Babel_telephony", 64 + "TeleConnectingSoundPlayer.start, waiting for millis: " + i, new Object[0]);
    c.postDelayed(new erf(this), b);
  }
  
  void b()
  {
    ezi.c("Babel_telephony", "TeleConnectingSoundPlayer.stop", new Object[0]);
    if (e) {
      f = true;
    }
    for (;;)
    {
      c.removeCallbacksAndMessages(null);
      return;
      if (d != null)
      {
        f = false;
        if (d.isPlaying()) {
          d.stop();
        }
        d.reset();
        d.release();
        d = null;
      }
    }
  }
  
  void c()
  {
    ezi.c("Babel_telephony", "TeleConnectingSoundPlayer.startAfterDelay", new Object[0]);
    d = new MediaPlayer();
    d.setLooping(true);
    d.setOnPreparedListener(this);
    d.setOnErrorListener(this);
    d.setAudioStreamType(0);
    try
    {
      d.setDataSource(a, ezc.c(aal.qq));
      return;
    }
    catch (IOException localIOException)
    {
      try
      {
        d.prepareAsync();
        e = true;
        return;
      }
      catch (Exception localException)
      {
        ezi.d("Babel_telephony", "TeleConnectingSoundPlayer.startAfterDelay, failed to prepare", localException);
        b();
      }
      localIOException = localIOException;
      ezi.d("Babel_telephony", "TeleConnectingSoundPlayer.startAfterDelay, failed to set data source", localIOException);
      b();
      return;
    }
  }
  
  public boolean onError(MediaPlayer paramMediaPlayer, int paramInt1, int paramInt2)
  {
    ezi.c("Babel_telephony", String.format("TeleConnectingSoundPlayer.onError, what: %d, extra: %d", new Object[] { Integer.valueOf(paramInt1), Integer.valueOf(paramInt2) }), new Object[0]);
    e = false;
    b();
    return true;
  }
  
  public void onPrepared(MediaPlayer paramMediaPlayer)
  {
    ezi.c("Babel_telephony", "TeleConnectingSoundPlayer.onPrepared", new Object[0]);
    e = false;
    if (f) {
      b();
    }
    while (paramMediaPlayer == null) {
      return;
    }
    paramMediaPlayer.start();
  }
}

/* Location:
 * Qualified Name:     ere
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */