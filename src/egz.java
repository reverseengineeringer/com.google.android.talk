import android.content.Context;
import android.content.Intent;
import android.media.AudioManager;
import android.media.AudioManager.OnAudioFocusChangeListener;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;
import android.media.MediaPlayer.OnErrorListener;
import android.media.MediaPlayer.OnPreparedListener;
import android.net.Uri;
import android.os.Handler;
import com.google.android.apps.hangouts.service.AudioPlayerService;
import java.io.IOException;

public final class egz
  implements AudioManager.OnAudioFocusChangeListener, MediaPlayer.OnCompletionListener, MediaPlayer.OnErrorListener, MediaPlayer.OnPreparedListener
{
  private final MediaPlayer b;
  private final AudioManager c;
  private final String d;
  private boolean e;
  private boolean f;
  private boolean g;
  private int h;
  private final Object i = new Object();
  private final Handler j = new Handler();
  private final Runnable k = new eha(this);
  
  public egz(AudioPlayerService paramAudioPlayerService, Context paramContext, String paramString1, String paramString2)
  {
    d = paramString2;
    c = ((AudioManager)paramContext.getSystemService("audio"));
    b = new MediaPlayer();
    h = 0;
    try
    {
      b.setOnPreparedListener(this);
      b.setOnCompletionListener(this);
      b.setOnErrorListener(this);
      b.setAudioStreamType(0);
      b.setDataSource(paramContext, Uri.parse(paramString1));
      g = false;
      e = true;
      b.prepareAsync();
      return;
    }
    catch (IOException paramAudioPlayerService)
    {
      ezi.c("Babel", "AudioPlayerService got an IOException in PlayOperation constructor.", paramAudioPlayerService);
      b.release();
      throw paramAudioPlayerService;
    }
  }
  
  private Intent a(String paramString)
  {
    if (AudioPlayerService.a)
    {
      String str = d;
      new StringBuilder(String.valueOf(paramString).length() + 30 + String.valueOf(str).length()).append("Sending Action: ").append(paramString).append(" for play_id: ").append(str);
    }
    return AudioPlayerService.a(paramString, d);
  }
  
  private void h()
  {
    synchronized (i)
    {
      if (h == 0) {
        return;
      }
      ??? = a("current_position");
      ((Intent)???).putExtra("position_in_milliseconds", b.getCurrentPosition());
      ((Intent)???).putExtra("duration_in_milliseconds", b.getDuration());
      a.sendBroadcast((Intent)???);
      return;
    }
  }
  
  public String a()
  {
    return d;
  }
  
  public void a(int paramInt)
  {
    b.seekTo(paramInt);
  }
  
  public void b()
  {
    if ((!g) && (c.requestAudioFocus(this, 0, 1) != 1))
    {
      ezi.d("Babel", "Unable to get audio focus.", new Object[0]);
      g();
      return;
    }
    g = true;
    b.start();
    a.sendBroadcast(a("play_started"));
  }
  
  public void c()
  {
    if (g)
    {
      c.abandonAudioFocus(this);
      g = false;
    }
    b.pause();
    a.sendBroadcast(a("play_paused"));
  }
  
  public void d()
  {
    for (int m = 1;; m = 0)
    {
      synchronized (i)
      {
        h += 1;
        if (h != 1) {
          continue;
        }
        if (m != 0)
        {
          f();
          return;
        }
      }
      h();
      return;
    }
  }
  
  public void e()
  {
    synchronized (i)
    {
      if (h > 0)
      {
        h -= 1;
        return;
      }
      ezi.e("Babel", "unregisterForCurrentPositionNotification: currentPositionListenerCount <= 0!", new Object[0]);
    }
  }
  
  void f()
  {
    h();
    synchronized (i)
    {
      if (h != 0) {
        j.postDelayed(k, 250L);
      }
      return;
    }
  }
  
  public void g()
  {
    do
    {
      synchronized (i)
      {
        h = 0;
        if (e)
        {
          f = true;
          return;
        }
      }
      if (g)
      {
        c.abandonAudioFocus(this);
        g = false;
      }
      b.stop();
      b.reset();
      b.release();
      a.sendBroadcast(a("play_stopped"));
    } while (this != a.b);
    a.b = null;
  }
  
  public void onAudioFocusChange(int paramInt)
  {
    switch (paramInt)
    {
    }
    do
    {
      return;
      boolean bool = AudioPlayerService.a;
      b.setVolume(1.0F, 1.0F);
      return;
      bool = AudioPlayerService.a;
      g();
      return;
      bool = AudioPlayerService.a;
      c();
      return;
      bool = AudioPlayerService.a;
    } while (!b.isPlaying());
    b.setVolume(0.1F, 0.1F);
  }
  
  public void onCompletion(MediaPlayer paramMediaPlayer)
  {
    g();
  }
  
  public boolean onError(MediaPlayer paramMediaPlayer, int paramInt1, int paramInt2)
  {
    ezi.d("Babel", 75 + "AudioPlayerService: MediaPlayer error. what: " + paramInt1 + " extra: " + paramInt2, new Object[0]);
    if (e)
    {
      paramMediaPlayer.reset();
      paramMediaPlayer.release();
      a.sendBroadcast(a("play_stopped"));
    }
    for (;;)
    {
      return true;
      g();
    }
  }
  
  public void onPrepared(MediaPlayer paramMediaPlayer)
  {
    e = false;
    if (f)
    {
      g();
      return;
    }
    Intent localIntent = a("ready_to_play");
    localIntent.putExtra("duration_in_milliseconds", paramMediaPlayer.getDuration());
    a.sendBroadcast(localIntent);
  }
}

/* Location:
 * Qualified Name:     egz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */