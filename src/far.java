import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.media.AudioManager;
import android.os.Handler;
import android.text.TextUtils;
import com.google.android.apps.hangouts.service.AudioPlayerService;
import com.google.android.apps.hangouts.views.AudioAttachmentView;

public final class far
{
  public static far a;
  public static fau b;
  public final Context c;
  String d;
  int e;
  private final String f;
  private String g;
  private int h;
  private long i;
  private AudioManager j;
  private AudioAttachmentView k;
  private int l;
  private int m;
  private BroadcastReceiver n;
  private final Runnable o;
  
  public far(AudioAttachmentView paramAudioAttachmentView, String paramString1, String paramString2, long paramLong)
  {
    c = paramAudioAttachmentView.getContext().getApplicationContext();
    f = paramString1;
    if (b(paramString2, paramLong))
    {
      d = paramString2;
      i = paramLong;
    }
    j = ((AudioManager)c.getSystemService("audio"));
    e = 0;
    o = new fas(this);
  }
  
  private static void a(far paramfar)
  {
    if (a == paramfar) {}
    do
    {
      return;
      a = paramfar;
    } while (b == null);
    b.a(1);
  }
  
  private void a(String paramString)
  {
    c.getSharedPreferences("AudioAttachment", 0).edit().putString("output", paramString).apply();
  }
  
  private void b(int paramInt)
  {
    if (e != paramInt) {
      if (AudioAttachmentView.a)
      {
        str = String.valueOf(c(paramInt));
        if (str.length() == 0) {
          break label63;
        }
      }
    }
    label63:
    for (String str = "new state:".concat(str);; str = new String("new state:"))
    {
      a("setState", str);
      e = paramInt;
      if (k != null) {
        k.e();
      }
      return;
    }
  }
  
  private static boolean b(String paramString, long paramLong)
  {
    return (!TextUtils.isEmpty(paramString)) && ((paramLong == 0L) || (System.currentTimeMillis() < paramLong));
  }
  
  private static String c(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return 19 + "UNKNOWN:" + paramInt;
    case 0: 
      return "IDLE";
    case 1: 
      return "PREFETCH";
    case 2: 
      return "FETCH_FOR_PLAY";
    case 3: 
      return "PREPARING";
    case 4: 
      return "PLAYING";
    }
    return "PAUSED";
  }
  
  private void m()
  {
    j.setSpeakerphoneOn("speaker".equals(c()));
  }
  
  private void n()
  {
    a("sendPrepare", "");
    Intent localIntent = a(1);
    localIntent.putExtra("audio_stream_url", d);
    c.startService(localIntent);
  }
  
  private void o()
  {
    a("sendPlay", "");
    c.startService(a(2));
  }
  
  private void p()
  {
    a("sendPause", "");
    c.startService(a(3));
  }
  
  private void q()
  {
    a("activateSelf", "");
    Object localObject = a;
    if (localObject != null)
    {
      if (((far)localObject).b() == 4) {
        ((far)localObject).p();
      }
      ((far)localObject).r();
    }
    localObject = j;
    if ((!j.isWiredHeadsetOn()) && ("speaker".equals(c()))) {}
    for (boolean bool = true;; bool = false)
    {
      ((AudioManager)localObject).setSpeakerphoneOn(bool);
      localObject = f;
      int i1 = h;
      g = (String.valueOf(localObject).length() + 19 + (String)localObject + "+playId=" + i1);
      h += 1;
      if (n == null)
      {
        n = new fat(this);
        localObject = new IntentFilter("ready_to_play");
        ((IntentFilter)localObject).addAction("play_started");
        ((IntentFilter)localObject).addAction("play_paused");
        ((IntentFilter)localObject).addAction("play_stopped");
        ((IntentFilter)localObject).addAction("current_position");
        ((IntentFilter)localObject).addAction("android.intent.action.HEADSET_PLUG");
        c.registerReceiver(n, (IntentFilter)localObject);
      }
      new Handler(c.getMainLooper()).postDelayed(o, 10000L);
      a(this);
      return;
    }
  }
  
  private void r()
  {
    a("deactivateSelf", "");
    if (n != null)
    {
      c.unregisterReceiver(n);
      n = null;
    }
    AudioManager localAudioManager = j;
    if ((!j.isWiredHeadsetOn()) && ("speaker".equals(c()))) {}
    for (boolean bool = true;; bool = false)
    {
      localAudioManager.setSpeakerphoneOn(bool);
      b(0);
      if (b != null) {
        b.a(4);
      }
      a(null);
      return;
    }
  }
  
  public Intent a(int paramInt)
  {
    Intent localIntent = new Intent(c, AudioPlayerService.class);
    localIntent.putExtra("op", paramInt);
    localIntent.putExtra("play_id", g);
    return localIntent;
  }
  
  public String a()
  {
    return f;
  }
  
  public void a(Intent paramIntent)
  {
    String str = paramIntent.getAction();
    int i1;
    if (str.equals("android.intent.action.HEADSET_PLUG")) {
      if (paramIntent.getIntExtra("state", 0) == 0)
      {
        i1 = 1;
        if (i1 == 0) {
          break label69;
        }
        m();
        label36:
        if (b != null) {
          b.a(2);
        }
        if (k != null) {
          k.e();
        }
      }
    }
    label69:
    label197:
    label258:
    do
    {
      do
      {
        do
        {
          do
          {
            return;
            i1 = 0;
            break;
            j.setSpeakerphoneOn(false);
            break label36;
          } while (!g.equals(paramIntent.getStringExtra("play_id")));
          if (str.equals("ready_to_play"))
          {
            a("onReadyToPlay", "");
            l = paramIntent.getIntExtra("duration_in_milliseconds", 0);
            m = 0;
            o();
            return;
          }
          if (!str.equals("play_started")) {
            break label197;
          }
          a("onPlayStarted", "");
          a("sendRegister", "");
          c.startService(a(6));
          b(4);
        } while (b == null);
        b.a(3);
        return;
        if (!str.equals("play_paused")) {
          break label258;
        }
        a("onPlayPaused", "");
        a("sendUnregister", "");
        c.startService(a(7));
        b(5);
      } while (b == null);
      b.a(4);
      return;
      if (str.equals("play_stopped"))
      {
        a("onPlayStopped", "");
        r();
        return;
      }
      if (!str.equals("current_position")) {
        break label340;
      }
      a("onCurrentPosition", "");
      m = paramIntent.getIntExtra("position_in_milliseconds", 0);
      l = paramIntent.getIntExtra("duration_in_milliseconds", 0);
    } while (k == null);
    k.e();
    return;
    label340:
    paramIntent = String.valueOf(str);
    if (paramIntent.length() != 0) {}
    for (paramIntent = "Received unrecognized broadcast action: ".concat(paramIntent);; paramIntent = new String("Received unrecognized broadcast action: "))
    {
      ezi.d("Babel", paramIntent, new Object[0]);
      return;
    }
  }
  
  public void a(AudioAttachmentView paramAudioAttachmentView)
  {
    k = paramAudioAttachmentView;
  }
  
  public void a(fav paramfav)
  {
    a("preloadAudioDataSourceIfNecessary", "");
    if ((b() == 0) && (paramfav != null) && (!b(d, i)))
    {
      b(1);
      paramfav.a();
    }
  }
  
  public void a(String paramString, long paramLong)
  {
    if (AudioAttachmentView.a)
    {
      String str = d;
      a("setAudioDataSource", String.valueOf(paramString).length() + 41 + String.valueOf(str).length() + "new audioStreamUrl is " + paramString + " audioStreamUrl is " + str);
    }
    if (!b(paramString, paramLong))
    {
      d = null;
      return;
    }
    switch (e)
    {
    case 4: 
    case 5: 
    case 3: 
    default: 
      paramString = String.valueOf(c(e));
      if (paramString.length() == 0) {
        break;
      }
    }
    for (paramString = "Unexpected state in setAudioDataSource: ".concat(paramString);; paramString = new String("Unexpected state in setAudioDataSource: "))
    {
      ezi.d("Babel", paramString, new Object[0]);
      return;
      d = paramString;
      i = paramLong;
      return;
      d = paramString;
      i = paramLong;
      b(0);
      return;
      d = paramString;
      i = paramLong;
      n();
      b(3);
      return;
    }
  }
  
  public void a(String paramString1, String paramString2)
  {
    if (AudioAttachmentView.a)
    {
      String str1 = f;
      String str2 = g;
      String str3 = String.valueOf(c(e));
      new StringBuilder(String.valueOf(paramString1).length() + 27 + String.valueOf(str1).length() + String.valueOf(str2).length() + String.valueOf(str3).length() + String.valueOf(paramString2).length()).append(paramString1).append(" messageId:").append(str1).append(" playId:").append(str2).append(" state:").append(str3).append(" ").append(paramString2);
    }
  }
  
  public void a(boolean paramBoolean)
  {
    if (j.isWiredHeadsetOn()) {
      return;
    }
    if (paramBoolean)
    {
      j.setSpeakerphoneOn(false);
      return;
    }
    m();
  }
  
  public int b()
  {
    return e;
  }
  
  public String c()
  {
    return c.getSharedPreferences("AudioAttachment", 0).getString("output", "speaker");
  }
  
  public void d()
  {
    if (j.isWiredHeadsetOn()) {
      ezi.d("Babel", "toggleAudioOutput: isWiredHeadset is true.", new Object[0]);
    }
    for (;;)
    {
      return;
      if ("speaker".equals(c()))
      {
        a("earpiece");
        j.setSpeakerphoneOn(false);
      }
      while (b != null)
      {
        b.a(2);
        return;
        a("speaker");
        j.setSpeakerphoneOn(true);
      }
    }
  }
  
  public boolean e()
  {
    int i1 = b();
    return ((i1 == 1) || (i1 == 4) || (i1 == 3)) && (!j.isWiredHeadsetOn());
  }
  
  public boolean f()
  {
    return j.isWiredHeadsetOn();
  }
  
  public boolean g()
  {
    return b() == 4;
  }
  
  public int h()
  {
    return l;
  }
  
  public int i()
  {
    return m;
  }
  
  public void j()
  {
    a("stopPlayback", "");
    r();
    a("sendStop", "");
    c.startService(a(5));
  }
  
  public void k()
  {
    a("playAudio", "");
    switch (e)
    {
    case 4: 
    default: 
      str = String.valueOf(c(e));
      if (str.length() == 0) {
        break;
      }
    }
    for (String str = "Unexpected state in playAudio: ".concat(str);; str = new String("Unexpected state in playAudio: "))
    {
      ezi.d("Babel", str, new Object[0]);
      return;
      if (b(d, i))
      {
        q();
        n();
        b(3);
        return;
      }
      if ((k != null) && (k.c != null))
      {
        q();
        k.c.a();
        b(2);
        return;
      }
      ezi.d("Babel", "No audioUrl, and no audioUrlFetcher.", new Object[0]);
      b(0);
      return;
      q();
      b(2);
      return;
      o();
      return;
    }
  }
  
  public void l()
  {
    a("pauseAudio", "");
    if (e == 4) {
      p();
    }
  }
}

/* Location:
 * Qualified Name:     far
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */