import android.content.Context;
import android.media.AudioManager;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Looper;

final class eyl
  extends Thread
{
  public eyk a;
  
  public eyl(eyh parameyh, eyk parameyk)
  {
    a = parameyk;
  }
  
  public void run()
  {
    Looper.prepare();
    b.c = Looper.myLooper();
    for (;;)
    {
      try
      {
        AudioManager localAudioManager = (AudioManager)aal.oJ.getSystemService("audio");
        try
        {
          MediaPlayer localMediaPlayer = new MediaPlayer();
          localMediaPlayer.setAudioStreamType(a.d);
          localMediaPlayer.setDataSource(aal.oJ, a.b);
          localMediaPlayer.setLooping(a.c);
          localMediaPlayer.setVolume(a.e, a.e);
          localMediaPlayer.prepare();
          if ((a.b != null) && (a.b.getEncodedPath() != null) && (a.b.getEncodedPath().length() > 0))
          {
            int j = a.d;
            if (!a.c) {
              continue;
            }
            i = 2;
            localAudioManager.requestAudioFocus(null, j, i);
          }
          localMediaPlayer.setOnCompletionListener(b);
          localMediaPlayer.start();
          if (b.f != null) {
            b.f.release();
          }
          b.f = localMediaPlayer;
        }
        catch (Exception localException)
        {
          int i;
          String str1 = b.d;
          String str2 = String.valueOf(a.b);
          ezi.c(str1, String.valueOf(str2).length() + 24 + "error loading sound for " + str2, localException);
          continue;
        }
        b.h = localAudioManager;
        notify();
        Looper.loop();
        return;
      }
      finally {}
      i = 3;
    }
  }
}

/* Location:
 * Qualified Name:     eyl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */