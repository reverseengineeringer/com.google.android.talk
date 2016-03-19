import android.content.Context;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.media.AudioManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiManager;
import android.net.wifi.WifiManager.WifiLock;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.PowerManager;
import android.os.PowerManager.WakeLock;
import android.text.TextUtils;
import com.google.android.libraries.hangouts.video.internal.CallService;
import com.google.android.libraries.hangouts.video.internal.DecoderManager;
import com.google.android.libraries.hangouts.video.internal.EncoderManager;
import com.google.android.libraries.hangouts.video.internal.Libjingle;
import com.google.android.libraries.hangouts.video.internal.MediaSources;
import com.google.android.libraries.hangouts.video.internal.NamedSource;
import com.google.android.libraries.hangouts.video.internal.RendererManager;
import com.google.android.libraries.hangouts.video.internal.Stats;
import com.google.android.libraries.hangouts.video.internal.Stats.BandwidthEstimationStats;
import com.google.android.libraries.hangouts.video.internal.Stats.ConnectionInfoStats;
import com.google.android.libraries.hangouts.video.internal.Stats.GlobalStats;
import com.google.android.libraries.hangouts.video.internal.Stats.VideoReceiverStats;
import com.google.android.libraries.hangouts.video.internal.Stats.VideoSenderStats;
import com.google.android.libraries.hangouts.video.internal.Stats.VoiceReceiverStats;
import com.google.android.libraries.hangouts.video.internal.Stats.VoiceSenderStats;
import com.google.android.libraries.hangouts.video.internal.VideoViewRequest;
import java.io.PrintWriter;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.TimeUnit;
import org.webrtc.voiceengine.AudioEffectsJB;
import org.webrtc.voiceengine.WebRtcAudioRecord;
import org.webrtc.voiceengine.WebRtcAudioUtils;

public final class hci
  implements hei
{
  private static final String[][] d;
  private static final long z = TimeUnit.SECONDS.toMillis(15L);
  private final Runnable A = new hcj(this);
  private final Set<Integer> B = new HashSet();
  private boolean C;
  final Libjingle a;
  final ConnectivityManager b;
  hcs c;
  private final Context e;
  private final hcd f;
  private final heh g;
  private final hej h;
  private final List<hcu> i;
  private final WifiManager j;
  private final WifiManager.WifiLock k;
  private hcp l;
  private final hbt m;
  private final hef n;
  private final hgv o;
  private Stats.BandwidthEstimationStats p;
  private final hhe q;
  private final hbo r;
  private hit s;
  private PowerManager.WakeLock t;
  private final hiv u;
  private final hfm v;
  private final Map<Integer, VideoViewRequest> w = new HashMap();
  private boolean x = false;
  private final hek y;
  
  static
  {
    String[] arrayOfString1 = { "babel_hangout_agc_config_target_level", "AGC_CONFIG_TARGET_LEVEL" };
    String[] arrayOfString2 = { "babel_hangout_agc_config_limiter_enable", "AGC_CONFIG_LIMITER_ENABLE" };
    String[] arrayOfString3 = { "babel_hangout_enable_rx_auto_gain_control", "ENABLE_RX_AUTO_GAIN_CONTROL" };
    String[] arrayOfString4 = { "babel_hangout_audio_record_sampling_rate", "AUDIO_RECORDING_SAMPLING_RATE" };
    String[] arrayOfString5 = { "babel_nova_handoff_recv_fraction_lost_threshold", "NOVA_HANDOFF_RECV_FRACTION_LOST_THRESHOLD" };
    d = new String[][] { { "babel_hangout_blocked_interface_names", "USE_DEFAULT_NETWORKS_ONLY" }, { "babel_hangout_ec_comfort_noise_generation", "EC_COMFORT_NOISE_GENERATION" }, { "babel_hangout_agc_mode", "AGC_MODE" }, arrayOfString1, { "babel_hangout_agc_config_comp_gain", "AGC_CONFIG_COMP_GAIN" }, arrayOfString2, arrayOfString3, { "babel_hangout_rx_agc_config_target_level", "RX_AGC_CONFIG_TARGET_LEVEL" }, { "babel_hangout_rx_agc_config_comp_gain", "RX_AGC_CONFIG_COMP_GAIN" }, { "babel_hangout_rx_agc_config_limiter_enable", "RX_AGC_CONFIG_LIMITER_ENABLE" }, arrayOfString4, { "babel_hangout_audio_playback_sampling_rate", "AUDIO_PLAYBACK_SAMPLING_RATE" }, { "babel_hangout_audio_recording_device", "AUDIO_RECORDING_DEVICE" }, { "babel_hangout_enter_step_timeout", "CALL_ENTER_STEP_TIMEOUT_MILLIS" }, { "babel_hangout_log_file_size", "DIAGNOSTIC_RAW_LOG_FILE_SIZE_BYTES" }, { "babel_hangout_h264_bitstream_rewrite_type", "H264_BITSTREAM_REWRITE_TYPE" }, { "babel_nova_handoff_expand_rate_threshold", "NOVA_HANDOFF_EXPAND_RATE_THRESHOLD" }, arrayOfString5, { "babel_nova_handoff_send_fraction_lost_threshold", "NOVA_HANDOFF_SEND_FRACTION_LOST_THRESHOLD" }, { "babel_nova_enable_receive_bitrate_handoff", "NOVA_ENABLE_RECV_BITRATE_HANDOFF" } };
  }
  
  public hci(hcd paramhcd)
  {
    e = paramhcd.a();
    f = paramhcd;
    h = new hej(e.getMainLooper());
    h.a(this);
    g = new heh(e.getContentResolver());
    a = new Libjingle(e, h, g);
    o = new hgv(e, CallService.b(e));
    q = new hhe(e, o);
    r = new hbo(new hhr(this), q);
    AudioEffectsJB.initialize(g.a("babel_hangout_ns_mode"), g.a("babel_hangout_aec_mode"), g.a("babel_hangout_agc_mode"));
    a.a(AudioEffectsJB.shouldUseWebRTCNoiseSuppressor());
    a.b(AudioEffectsJB.shouldUseWebRTCAcousticEchoCanceler());
    a.c(AudioEffectsJB.shouldUseWebRTCAutomaticGainControl());
    int i1;
    Object localObject1;
    if (Build.VERSION.SDK_INT >= 17)
    {
      i1 = g.a("babel_hangout_audio_record_sampling_rate", -1);
      localObject1 = ((AudioManager)e.getSystemService("audio")).getProperty("android.media.property.OUTPUT_SAMPLE_RATE");
      if (i1 != -1) {
        WebRtcAudioUtils.setDefaultSampleRateHz(i1);
      }
    }
    for (;;)
    {
      a.d();
      localObject1 = a;
      String str1 = Long.toString(CallService.a(e));
      String[][] arrayOfString = d;
      String str2 = String.valueOf(e.getCacheDir());
      ((Libjingle)localObject1).a(str1, arrayOfString, String.valueOf(str2).length() + 14 + str2 + "/raw_call_logs");
      i = new CopyOnWriteArrayList();
      b = ((ConnectivityManager)e.getSystemService("connectivity"));
      j = ((WifiManager)e.getSystemService("wifi"));
      k = j.createWifiLock(3, "VideoChatWifiLock");
      k.setReferenceCounted(false);
      y = new hek();
      m = new hbt(e);
      n = new hef(e);
      u = paramhcd.b();
      v = new hfm(e, paramhcd);
      return;
      if (localObject1 != null) {
        try
        {
          i1 = Integer.parseInt((String)localObject1);
        }
        catch (NumberFormatException localNumberFormatException)
        {
          hlk.b("vclib", "AudioManager sample rate is invalid.", localNumberFormatException);
        }
      }
      i1 = 16000;
      break;
      Object localObject2 = ((AudioManager)e.getSystemService("audio")).getParameters("ec_supported");
      if (localObject2 != null)
      {
        localObject2 = ((String)localObject2).split("=");
        if (localObject2.length == 2)
        {
          localObject2 = localObject2[1].toLowerCase(Locale.US);
          if (("yes".equals(localObject2)) || ("true".equals(localObject2)) || ("1".equals(localObject2))) {
            a.b(false);
          }
        }
      }
      WebRtcAudioUtils.setDefaultSampleRateHz(g.a("babel_hangout_audio_record_sampling_rate", 16000));
    }
  }
  
  private void a(hil paramhil, atn paramatn)
  {
    aal.w();
    Iterator localIterator = i.iterator();
    while (localIterator.hasNext()) {
      ((hcu)localIterator.next()).a(paramhil, paramatn);
    }
  }
  
  static void a(String paramString, Object... paramVarArgs)
  {
    if (hlk.a(3)) {
      hlk.a(3, "vclib", String.format(paramString, paramVarArgs));
    }
  }
  
  private void a(byte[] paramArrayOfByte, boolean paramBoolean, int paramInt)
  {
    hbs.b("Expected non-null", c);
    try
    {
      paramArrayOfByte = (jux)lyi.b(new jux(), paramArrayOfByte, paramArrayOfByte.length);
      hbs.b("Expected condition to be false", TextUtils.isEmpty(d));
      c.e(d);
      if (paramBoolean)
      {
        if (!TextUtils.isEmpty(c)) {
          c.k().a(d, c, paramInt);
        }
      }
      else
      {
        c.k().a(d);
        return;
      }
    }
    catch (lyg paramArrayOfByte)
    {
      hlk.a("vclib", "Unable to parse HandoffLogEntry proto from bytes", paramArrayOfByte);
    }
  }
  
  private void a(NamedSource[] paramArrayOfNamedSource, int paramInt)
  {
    aal.w();
    int i2 = paramArrayOfNamedSource.length;
    int i1 = 0;
    if (i1 < i2)
    {
      Object localObject2 = paramArrayOfNamedSource[i1];
      if ((c.m() == null) || (!a.equals(c.m().a())))
      {
        localObject1 = c.c(a);
        if (localObject1 != null) {
          break label130;
        }
        localObject1 = String.valueOf(a);
        if (((String)localObject1).length() == 0) {
          break label115;
        }
      }
      label115:
      for (Object localObject1 = "Received a media source update for an unknown participant: ".concat((String)localObject1);; localObject1 = new String("Received a media source update for an unknown participant: "))
      {
        hlk.a(6, "vclib", (String)localObject1);
        i1 += 1;
        break;
      }
      switch (paramInt)
      {
      default: 
        label130:
        hbs.a("Unexpected MediaSourceEvent type");
      }
      for (;;)
      {
        localObject2 = new hiq(paramInt, c);
        Iterator localIterator = i.iterator();
        while (localIterator.hasNext()) {
          ((hcu)localIterator.next()).a((hil)localObject1, (atn)localObject2);
        }
        ((hil)localObject1).b(c);
        continue;
        ((hil)localObject1).c(c);
        continue;
        ((hil)localObject1).d(c);
        continue;
        ((hil)localObject1).e(c);
      }
    }
  }
  
  private void c(String paramString, int paramInt)
  {
    hbs.a(c.g(), paramString);
    c.a(paramInt);
  }
  
  private String e()
  {
    NetworkInfo localNetworkInfo = b.getActiveNetworkInfo();
    if (localNetworkInfo == null) {
      return "networkType";
    }
    String str = String.valueOf("networkType");
    int i1 = localNetworkInfo.getType();
    return String.valueOf(str).length() + 11 + str + i1;
  }
  
  private void f()
  {
    hbs.a("Expected condition to be true", t.isHeld());
    aal.w();
    Object localObject = a;
    String str = String.valueOf(CallService.b(e));
    if (str.length() != 0) {}
    for (str = "apiaryUri: ".concat(str);; str = new String("apiaryUri: "))
    {
      ((Libjingle)localObject).c(str);
      str = c.g();
      localObject = c.j();
      if (!hit.a((hkt)localObject)) {
        break;
      }
      s = new hit(e, q, (hkt)localObject, new hck(this, str, (hkt)localObject));
      s.b();
      return;
    }
    str = String.valueOf(str);
    if (str.length() != 0) {}
    for (str = "initiateCall for ".concat(str);; str = new String("initiateCall for "))
    {
      a(str, new Object[0]);
      str = ((hkt)localObject).f();
      c.a(str);
      a.a((hkt)localObject, str);
      return;
    }
  }
  
  private boolean f(String paramString)
  {
    return (c != null) && (c.g().equals(paramString));
  }
  
  private void g()
  {
    a("CallManager.finishCall", new Object[0]);
    Object localObject = A;
    aal.y().removeCallbacks((Runnable)localObject);
    aal.w();
    a("CallManager.endCallAndSignOut", new Object[0]);
    if (y.a() == 0)
    {
      hlk.a(4, "vclib", "Ignoring endCallAndSignOut; call never joined.");
      if (y.a() != 0) {
        y.a(0);
      }
      aal.w();
      if (t != null)
      {
        hlk.a(4, "vclib", "Releasing WakeLock");
        t.release();
        t = null;
      }
      if (k.isHeld())
      {
        hlk.a(4, "vclib", "Releasing WiFi lock");
        k.release();
      }
      h.a(null);
      a.b();
      if (c == null) {
        break label349;
      }
      if ((c.p() == 1015) || (c.a() == null)) {
        break label309;
      }
      hbw.a(new hcn((hbh)r.a(hbh.class), c.a()));
    }
    for (;;)
    {
      if (l != null)
      {
        e.unregisterReceiver(l);
        l = null;
      }
      n.a();
      v.a();
      localObject = i.iterator();
      while (((Iterator)localObject).hasNext()) {
        ((hcu)((Iterator)localObject).next()).b(c);
      }
      y.a(3);
      y.b();
      a.e();
      break;
      label309:
      hlk.a(3, "vclib", "Skiping LeaveHandler, endCause: %d, resolveHangoutId: %s", new Object[] { Integer.valueOf(c.p()), c.a() });
      continue;
      label349:
      hlk.a(3, "vclib", "currentCall is null; leave not required.");
    }
    c = null;
    o.a(null);
    q.a();
  }
  
  @Deprecated
  hcs a()
  {
    aal.w();
    return c;
  }
  
  void a(char paramChar, int paramInt, String paramString)
  {
    aal.w();
    a.a(paramChar, paramInt, paramString);
  }
  
  void a(int paramInt)
  {
    
    if (C)
    {
      hlk.a(5, "vclib", "Terminate already started; ignoring.");
      return;
    }
    C = true;
    if (s != null)
    {
      s.a();
      s = null;
    }
    if (c != null)
    {
      hlk.a(3, "vclib", "terminateCall sessionId: %s endCause: %d", new Object[] { c.g(), Integer.valueOf(paramInt) });
      if (p != null)
      {
        int i1 = p.a;
        SharedPreferences.Editor localEditor = e.getSharedPreferences("startBitrate", 0).edit();
        localEditor.putInt(e(), i1);
        localEditor.apply();
      }
      c.c(paramInt);
      if (y.a() == 2)
      {
        a.f();
        aal.a(A, z);
        return;
      }
      g();
      return;
    }
    hlk.a(4, "vclib", "terminateCall: abandoned");
    g();
  }
  
  public void a(int paramInt1, int paramInt2, byte[] paramArrayOfByte)
  {
    
    if (r != null) {
      r.a(paramInt1, paramInt2, paramArrayOfByte);
    }
  }
  
  public void a(int paramInt, String paramString)
  {
    aal.w();
    f.j().a(paramInt, paramString);
  }
  
  public void a(long paramLong, int paramInt1, int paramInt2)
  {
    u.a(paramLong, paramInt1, paramInt2);
  }
  
  public void a(long paramLong, String paramString, byte[] paramArrayOfByte, int paramInt)
  {
    o.a(paramLong, paramString, paramArrayOfByte, paramInt);
  }
  
  public void a(Stats paramStats)
  {
    if ((paramStats instanceof Stats.VideoReceiverStats))
    {
      Stats.VideoReceiverStats localVideoReceiverStats = (Stats.VideoReceiverStats)paramStats;
      if (w.containsKey(Integer.valueOf(a)))
      {
        VideoViewRequest localVideoViewRequest = (VideoViewRequest)w.get(Integer.valueOf(a));
        localVideoReceiverStats.b(width);
        localVideoReceiverStats.c(height);
      }
    }
    c.k().b(paramStats);
  }
  
  void a(hcu paramhcu)
  {
    
    if (!i.contains(paramhcu)) {
      i.add(paramhcu);
    }
  }
  
  void a(PrintWriter paramPrintWriter)
  {
    if (c == null) {
      return;
    }
    c.k().a(paramPrintWriter);
    int i1;
    if (c())
    {
      paramPrintWriter.println("Call info");
      if ((c == null) || (!c.e())) {
        break label161;
      }
      i1 = 1;
      if (i1 == 0) {
        break label166;
      }
      str = "connected";
      label60:
      str = String.valueOf(str);
      if (str.length() == 0) {
        break label173;
      }
      str = "     media state: ".concat(str);
      label80:
      paramPrintWriter.println(str);
      str = String.valueOf(c.g());
      if (str.length() == 0) {
        break label187;
      }
      str = "  localSessionId: ".concat(str);
      label111:
      paramPrintWriter.println(str);
      if (c.a() != null)
      {
        str = String.valueOf(c.a());
        if (str.length() == 0) {
          break label201;
        }
      }
    }
    label161:
    label166:
    label173:
    label187:
    label201:
    for (String str = "     hangoutId: ".concat(str);; str = new String("     hangoutId: "))
    {
      paramPrintWriter.println(str);
      RendererManager.c();
      return;
      i1 = 0;
      break;
      str = "-";
      break label60;
      str = new String("     media state: ");
      break label80;
      str = new String("  localSessionId: ");
      break label111;
    }
  }
  
  void a(String paramString)
  {
    aal.w();
    a.a(paramString);
  }
  
  public void a(String paramString, int paramInt)
  {
    
    if (f(paramString))
    {
      Iterator localIterator = i.iterator();
      while (localIterator.hasNext()) {
        ((hcu)localIterator.next()).a(paramString, paramInt);
      }
    }
  }
  
  public void a(String paramString1, int paramInt1, int paramInt2, String paramString2, String paramString3, String paramString4, byte[] paramArrayOfByte)
  {
    if (hlk.a(3)) {
      a("handleEndpointEvent: participantId=%s eventType=%s, args=%d, %s, %s, %s, participantProto? %b", new Object[] { paramString1, hej.a(paramInt1), Integer.valueOf(paramInt2), paramString2, paramString3, paramString4, paramArrayOfByte });
    }
    if (c == null) {
      a("Got endpoint event, but there's no current call. Ignore.", new Object[0]);
    }
    Object localObject1;
    do
    {
      return;
      localObject1 = c.b(paramString1);
      if ((paramInt1 != 0) && (paramInt1 != 1)) {
        break;
      }
    } while (localObject1 != null);
    Object localObject3 = new khk();
    if (paramArrayOfByte != null) {}
    for (;;)
    {
      boolean bool1;
      try
      {
        localObject1 = (khk)lyi.b((lyi)localObject3, paramArrayOfByte, paramArrayOfByte.length);
      }
      catch (lyg locallyg1)
      {
        paramArrayOfByte = (byte[])localObject3;
      }
      try
      {
        paramArrayOfByte = e;
        localObject3 = paramArrayOfByte;
        paramArrayOfByte = (byte[])localObject1;
        bool1 = false;
        if (aal.a(n, 0) != 5) {
          break label342;
        }
        hbs.a(Integer.valueOf(paramInt1), Integer.valueOf(1));
        paramString1 = new hir(paramString1, paramString3, paramInt2, paramString2);
        if (!bool1) {
          break label412;
        }
        c.a((hip)paramString1);
        paramString2 = new hin();
        if (paramInt1 != 0) {
          break label469;
        }
        if (paramArrayOfByte == null) {
          break label878;
        }
        r.a(hbh.a.a(paramArrayOfByte));
        v.a(new int[] { 500 });
      }
      catch (lyg locallyg2)
      {
        for (;;)
        {
          label342:
          label412:
          label469:
          label714:
          label728:
          paramArrayOfByte = locallyg1;
          localObject2 = locallyg2;
          continue;
          label878:
          paramArrayOfByte = null;
          break;
          label884:
          boolean bool2 = bool1;
        }
      }
      if (paramArrayOfByte != null)
      {
        a("Updating privileges from proto", new Object[0]);
        paramString3 = s;
        paramInt2 = paramString3.length;
        paramInt1 = 0;
        if (paramInt1 < paramInt2)
        {
          switch (paramString3[paramInt1])
          {
          default: 
            paramInt1 += 1;
            continue;
            hlk.b("vclib", "Could not parse participantProto", locallyg1);
            localObject3 = null;
            continue;
            if (paramInt1 == 0) {}
            for (bool1 = true;; bool1 = false)
            {
              if ((bool1) || (c.m() == null)) {
                break label884;
              }
              bool2 = c.m().u().equals(paramString2);
              paramString1 = new hip(paramString1, paramString3, (String)localObject3, paramInt2, paramString2, bool1, bool2, paramString4);
              break;
            }
            c.a(paramString1);
            break;
          case 3: 
            paramString1.q();
            break;
          case 4: 
            paramString1.s();
            break;
          }
        }
        else
        {
          paramString3 = paramString2;
          paramString2 = paramString1;
          paramString1 = paramString3;
        }
      }
      else
      {
        for (;;)
        {
          a(paramString2, paramString1);
          return;
          a("Fallback to legacy privileges", new Object[0]);
          paramString1.q();
          paramString3 = paramString1;
          paramString1 = paramString2;
          paramString2 = paramString3;
          continue;
          if (paramInt1 == 2)
          {
            if (locallyg1 == null)
            {
              hlk.b("vclib", "Got an ENDPOINT_EXITED event for %s, which doesn't exist in endpoints", new Object[] { paramString1 });
              return;
            }
            if (!TextUtils.isEmpty(paramString2)) {
              try
              {
                paramInt1 = Integer.parseInt(paramString2);
                paramString1 = Integer.valueOf(paramInt1);
                c.b(locallyg1);
                paramString1 = new hio(paramString1);
                paramString2 = locallyg1;
              }
              catch (NumberFormatException paramString1)
              {
                paramString1 = String.valueOf(paramString2);
                if (paramString1.length() == 0) {}
              }
            } else {
              for (paramString1 = "CallState - unexpected endpoint exit error string:".concat(paramString1);; paramString1 = new String("CallState - unexpected endpoint exit error string:"))
              {
                hlk.a(5, "vclib", paramString1);
                paramString1 = null;
                break;
              }
            }
          }
          else
          {
            if (locallyg1 == null) {
              break;
            }
            switch (paramInt1)
            {
            default: 
              hbs.a("Unexpected event type");
              paramString1 = null;
              paramString2 = locallyg1;
              break;
            case 3: 
              if (!locallyg1.a(paramInt2)) {
                break;
              }
              paramString1 = new hik();
              paramString2 = locallyg1;
              break;
            case 4: 
              if (paramInt2 != 0)
              {
                bool1 = true;
                if (paramString2 != null) {
                  break label714;
                }
              }
              for (paramString3 = null;; paramString3 = c.b(paramString2))
              {
                if (locallyg1 != paramString3) {
                  break label728;
                }
                hlk.a(5, "vclib", "Got a remote mute request with the wrong by_participant_id, ignoring.");
                return;
                bool1 = false;
                break;
              }
              paramString4 = new hij(bool1, paramString3);
              if (locallyg1.k())
              {
                paramString1 = paramString4;
                paramString2 = locallyg1;
                if (paramString3 != null)
                {
                  hbs.a("Expected condition to be true", ((hij)paramString4).a());
                  WebRtcAudioRecord.setMicrophoneMute(bool1);
                  locallyg1.a(bool1);
                  paramString1 = paramString4;
                  paramString2 = locallyg1;
                }
              }
              else
              {
                locallyg1.a(bool1);
                paramString1 = paramString4;
                paramString2 = locallyg1;
              }
              break;
            }
          }
        }
        if (paramInt2 != 0) {}
        for (bool1 = true;; bool1 = false)
        {
          hbs.a("Expected condition to be true", locallyg1 instanceof hip);
          ((hip)locallyg1).b(bool1);
          paramString1 = new his(bool1);
          paramString2 = locallyg1;
          break;
        }
        Object localObject2 = locallyg2;
        paramArrayOfByte = null;
      }
    }
  }
  
  public void a(String paramString, MediaSources paramMediaSources)
  {
    
    if (!f(paramString)) {
      return;
    }
    a(a, 0);
    a(b, 1);
    a(c, 2);
    a(d, 3);
  }
  
  void a(String paramString1, String paramString2, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, byte[] paramArrayOfByte)
  {
    aal.w();
    a.a(paramString1, paramString2, false, paramBoolean2, paramBoolean3, paramArrayOfByte);
  }
  
  void a(boolean paramBoolean)
  {
    
    if (paramBoolean != x)
    {
      a.e(paramBoolean);
      x = paramBoolean;
    }
  }
  
  void a(boolean paramBoolean1, String[] paramArrayOfString, int paramInt, boolean paramBoolean2, boolean paramBoolean3, String paramString)
  {
    aal.w();
    a.a(false, paramArrayOfString, 1, true, false, null);
  }
  
  public void a(byte[] paramArrayOfByte)
  {
    
    if (a.c()) {
      a.handlePushNotification(paramArrayOfByte);
    }
  }
  
  void a(VideoViewRequest[] paramArrayOfVideoViewRequest)
  {
    
    if (C)
    {
      hlk.a(5, "vclib", "Ignoring view request issued while leaving a call.");
      return;
    }
    int i1 = 0;
    if (i1 <= 0)
    {
      VideoViewRequest localVideoViewRequest = paramArrayOfVideoViewRequest[0];
      if ((width == 0) && (height == 0)) {
        w.remove(Integer.valueOf(ssrc));
      }
      for (;;)
      {
        i1 += 1;
        break;
        w.put(Integer.valueOf(ssrc), localVideoViewRequest);
      }
    }
    a.a(paramArrayOfVideoViewRequest);
  }
  
  boolean a(hkt paramhkt)
  {
    aal.w();
    hbs.a("Expected null", c);
    if (paramhkt.a() == null) {
      throw new IllegalStateException("No session id provided for call");
    }
    c = new hcs(paramhkt);
    Object localObject = b.getActiveNetworkInfo();
    if (localObject == null)
    {
      hlk.a(6, "vclib", "No network connected");
      c.c(1001);
      g();
      return false;
    }
    hbs.a("Expected null", t);
    aal.w();
    t = ((PowerManager)e.getSystemService("power")).newWakeLock(536870913, "vclib");
    hlk.a(4, "vclib", "Acquiring WakeLock");
    t.acquire();
    if (((NetworkInfo)localObject).getType() == 1)
    {
      hlk.a(4, "vclib", "Acquiring WiFi lock");
      k.acquire();
    }
    c.b(m.a());
    if (paramhkt.u())
    {
      localObject = new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE");
      l = new hcp(this);
      e.registerReceiver(l, (IntentFilter)localObject);
    }
    switch (y.a())
    {
    default: 
      int i1 = y.a();
      hbs.a(37 + "Unexpected sign-in state: " + i1);
      return false;
    case 0: 
      a("We're not yet signed in; signing in and postponing initiation until done", new Object[0]);
      b(paramhkt);
    }
    for (;;)
    {
      return true;
      a("Sign-in in progress. Postponing initiation until done", new Object[0]);
      continue;
      c.c();
      f();
    }
  }
  
  @Deprecated
  hek b()
  {
    aal.w();
    return y;
  }
  
  public void b(int paramInt)
  {
    if (paramInt == 1) {
      v.a(new int[] { 7 });
    }
  }
  
  public void b(int paramInt, String paramString)
  {
    boolean bool = false;
    a(String.valueOf(paramString).length() + 41 + "CallManager.handleCallEnd: " + paramInt + " / " + paramString, new Object[0]);
    aal.w();
    if (c == null)
    {
      if ((paramInt == 21) || (paramInt == 22) || (paramInt == 1003) || (paramInt == 1015) || (paramInt == 23) || (paramInt == 1018)) {}
      for (int i1 = 1;; i1 = 0)
      {
        if ((i1 != 0) || (paramInt == 1000)) {
          bool = true;
        }
        hbs.a("Expected condition to be true", bool);
        return;
      }
    }
    c.a(paramInt, paramString);
    a("CallManager.handleCallEnd - finishing call", new Object[0]);
    g();
  }
  
  public void b(Stats paramStats)
  {
    Object localObject;
    int i1;
    if ((paramStats instanceof Stats.ConnectionInfoStats))
    {
      localObject = (Stats.ConnectionInfoStats)paramStats;
      i1 = c.n();
      ((Stats.ConnectionInfoStats)localObject).setMediaNetworkType(i1);
      ((Stats.ConnectionInfoStats)localObject).setSignalStrength(m.a(i1));
    }
    do
    {
      hku localhku;
      do
      {
        for (;;)
        {
          c.k().a(paramStats);
          localObject = new juk();
          localhku = f.j();
          if (!(paramStats instanceof Stats.VoiceSenderStats)) {
            break;
          }
          ((Stats.VoiceSenderStats)paramStats).addTo((juk)localObject);
          localhku.a((juk)localObject);
          return;
          if ((paramStats instanceof Stats.GlobalStats)) {
            n.a((Stats.GlobalStats)paramStats);
          }
        }
        if ((paramStats instanceof Stats.VoiceReceiverStats))
        {
          ((Stats.VoiceReceiverStats)paramStats).addTo((juk)localObject);
          localhku.a((juk)localObject);
          return;
        }
        if ((paramStats instanceof Stats.VideoSenderStats))
        {
          ((Stats.VideoSenderStats)paramStats).addTo((juk)localObject);
          localhku.a((juk)localObject);
          return;
        }
        if ((paramStats instanceof Stats.VideoReceiverStats))
        {
          ((Stats.VideoReceiverStats)paramStats).addTo((juk)localObject);
          localhku.a((juk)localObject);
          return;
        }
      } while (!(paramStats instanceof Stats.BandwidthEstimationStats));
      paramStats = (Stats.BandwidthEstimationStats)paramStats;
      p = paramStats;
      paramStats.addTo((juk)localObject);
      localhku.a((juk)localObject);
      i1 = a;
      if ((i1 >= 500000) && (!B.contains(Integer.valueOf(500000))))
      {
        u.a(2694);
        B.add(Integer.valueOf(500000));
        v.a(new int[] { 501 });
      }
      if ((i1 >= 1000000) && (!B.contains(Integer.valueOf(1000000))))
      {
        u.a(2695);
        B.add(Integer.valueOf(1000000));
        v.a(new int[] { 502 });
      }
    } while ((i1 < 1500000) || (B.contains(Integer.valueOf(1500000))));
    u.a(2696);
    B.add(Integer.valueOf(1500000));
    v.a(new int[] { 503 });
  }
  
  void b(hcu paramhcu)
  {
    aal.w();
    i.remove(paramhcu);
  }
  
  void b(hkt paramhkt)
  {
    Object localObject1 = ((hcb)ilh.a(e, hcb.class)).a(paramhkt.n());
    Object localObject2 = new jxm();
    if (aal.a(zb, false)) {}
    for (a = Integer.valueOf(27);; a = Integer.valueOf(1))
    {
      d = Long.valueOf(CallService.a(e));
      q.a((jxm)localObject2);
      localObject2 = new jxj();
      a = paramhkt.p();
      b = paramhkt.o();
      d = paramhkt.b();
      q.a((jxj)localObject2);
      q.a(paramhkt.d());
      q.a((hca)localObject1, f.j());
      y.a((hca)localObject1);
      y.a(1);
      localObject1 = paramhkt.z();
      localObject2 = f.h();
      EncoderManager localEncoderManager = f.g();
      if (!aal.a(g, false))
      {
        ((DecoderManager)localObject2).c();
        localEncoderManager.a();
      }
      int i2 = aal.a(e, 1);
      int i1 = i2;
      if (i2 <= 1) {
        i1 = e.getSharedPreferences("startBitrate", 0).getInt(e(), -1);
      }
      e = Integer.valueOf(i1);
      a.a(lyi.a((lyi)localObject1));
      a.a(paramhkt, ((DecoderManager)localObject2).b(), localEncoderManager.c());
      localObject2 = new hco(this);
      paramhkt = new hhi(e, (hhb)localObject2, paramhkt.a(), paramhkt.b(), aal.a(q, false));
      o.a(paramhkt);
      return;
    }
  }
  
  void b(String paramString)
  {
    aal.w();
    khr localkhr = new khr();
    a = c.a();
    b = paramString;
    c = Integer.valueOf(43);
    ((hbh)r.a(hbh.class)).c(localkhr, new hcl(this, paramString));
  }
  
  public void b(String paramString, int paramInt)
  {
    
    if (!f(paramString))
    {
      paramString = String.valueOf(paramString);
      if (paramString.length() != 0) {}
      for (paramString = "Received state change for unknown call: ".concat(paramString);; paramString = new String("Received state change for unknown call: "))
      {
        hlk.a(5, "vclib", paramString);
        return;
      }
    }
    switch (paramInt)
    {
    case 0: 
    default: 
      return;
    case 1: 
      c.k().a();
      c.k().c();
      c(paramString, paramInt);
      return;
    case 2: 
      c(paramString, paramInt);
      c.k().b();
      paramString = i.iterator();
      while (paramString.hasNext()) {
        ((hcu)paramString.next()).a(c);
      }
    }
    String str = String.valueOf(paramString);
    if (str.length() != 0) {}
    for (str = "STATE_DEINIT sessionid: ".concat(str);; str = new String("STATE_DEINIT sessionid: "))
    {
      a(str, new Object[0]);
      c(paramString, paramInt);
      b(1, null);
      return;
    }
  }
  
  void b(boolean paramBoolean)
  {
    
    if (c != null)
    {
      if (c.e()) {
        a.d(paramBoolean);
      }
      if (c.m() == null) {
        throw new IllegalStateException("Mute is allowed only after STATE_INPROGRESS");
      }
      c.m().a(paramBoolean);
      aal.a(new hcm(this, paramBoolean));
    }
  }
  
  public void b(byte[] paramArrayOfByte)
  {
    if (c != null)
    {
      c.a(true);
      a(paramArrayOfByte, false, 0);
    }
  }
  
  public void c(int paramInt)
  {
    hky localhky = new hky(paramInt);
    f.j().a(localhky);
  }
  
  void c(String paramString)
  {
    aal.w();
    a.b(paramString);
  }
  
  public void c(boolean paramBoolean)
  {
    a(41 + "handleSignedInStateUpdate: signedIn=" + paramBoolean, new Object[0]);
    aal.w();
    hbs.a("Expected condition to be true", paramBoolean);
    y.a(2);
    if ((c != null) && (c.b()))
    {
      c.c();
      f();
    }
  }
  
  public void c(byte[] paramArrayOfByte)
  {
    if (c != null)
    {
      c.a(false);
      if (c.l().size() <= 1) {
        break label42;
      }
    }
    label42:
    for (int i1 = 51;; i1 = 23)
    {
      a(paramArrayOfByte, true, i1);
      return;
    }
  }
  
  boolean c()
  {
    return c != null;
  }
  
  hbo d()
  {
    return r;
  }
  
  public void d(int paramInt)
  {
    a(paramInt);
  }
  
  void d(String paramString)
  {
    a.c(paramString);
  }
  
  public void d(byte[] paramArrayOfByte)
  {
    try
    {
      paramArrayOfByte = (kjs)lyi.b(new kjs(), paramArrayOfByte, paramArrayOfByte.length);
      Iterator localIterator = i.iterator();
      while (localIterator.hasNext()) {
        ((hcu)localIterator.next()).a(paramArrayOfByte);
      }
      return;
    }
    catch (lyg paramArrayOfByte)
    {
      hlk.b("vclib", "Cannot parse StreamRequest.", paramArrayOfByte);
    }
  }
  
  public void e(String paramString)
  {
    c.d(paramString);
  }
  
  public void e(byte[] paramArrayOfByte)
  {
    try
    {
      paramArrayOfByte = new hky((juf)lyi.b(new juf(), paramArrayOfByte, paramArrayOfByte.length));
      f.j().a(paramArrayOfByte);
      return;
    }
    catch (lyg paramArrayOfByte)
    {
      hlk.b("vclib", "Cannot parse Media Event.", paramArrayOfByte);
    }
  }
}

/* Location:
 * Qualified Name:     hci
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */