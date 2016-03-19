import android.media.MediaPlayer;
import android.net.Uri;
import java.io.IOException;

final class cik
{
  private static final Uri a = ezc.c(aal.hK);
  private static final Uri b = ezc.c(aal.hH);
  private final MediaPlayer c = new MediaPlayer();
  private boolean d = false;
  
  cik(boolean paramBoolean)
  {
    c.setLooping(true);
    c.setAudioStreamType(0);
    if (paramBoolean) {}
    for (;;)
    {
      try
      {
        localUri = b;
        c.setDataSource(aal.oJ, localUri);
      }
      catch (IOException localIOException)
      {
        Uri localUri;
        int i;
        float f;
        String str = String.valueOf(localIOException);
        hlk.a(6, "Babel_calls", String.valueOf(str).length() + 27 + "Failed to set data source: " + str);
        continue;
      }
      i = aal.a(aal.oJ, "babel_hangout_outgoing_ringtone_volume_percentage", 100);
      if ((i >= 0) && (i <= 100))
      {
        f = i / 100.0F;
        c.setVolume(f, f);
      }
      return;
      localUri = a;
    }
  }
  
  private boolean c()
  {
    if (d) {
      return true;
    }
    try
    {
      c.prepare();
      d = true;
      return true;
    }
    catch (Exception localException)
    {
      String str = String.valueOf(localException);
      hlk.a(6, "Babel_calls", String.valueOf(str).length() + 26 + "Failed to prepare ringer: " + str);
    }
    return false;
  }
  
  void a()
  {
    try
    {
      if (c())
      {
        if (c.isPlaying()) {
          c.pause();
        }
        c.seekTo(0);
        c.start();
      }
      c.start();
      return;
    }
    finally {}
  }
  
  void b()
  {
    try
    {
      if (c.isPlaying()) {
        c.stop();
      }
      return;
    }
    finally {}
  }
}

/* Location:
 * Qualified Name:     cik
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */