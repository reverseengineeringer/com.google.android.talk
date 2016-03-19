import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothHeadset;
import android.content.Context;
import android.media.AudioManager;
import android.os.Build.VERSION;
import android.os.Handler;
import android.telephony.TelephonyManager;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
import org.webrtc.voiceengine.WebRtcAudioRecord;
import org.webrtc.voiceengine.WebRtcAudioTrack;

public final class hjz
  implements hkq, hkr
{
  final Context a;
  final AudioManager b;
  final hkj c = new hkj(this);
  final Object d = new Object();
  boolean e;
  boolean f;
  hkd g;
  hke h = hke.a;
  final Set<hkd> i = new CopyOnWriteArraySet();
  hki j;
  BluetoothAdapter k;
  BluetoothHeadset l;
  hkg m;
  BluetoothDevice n;
  hke o;
  private final Runnable p = new hkf(this);
  private hcd q;
  private boolean r;
  private boolean s;
  private final Runnable t = new hka(this);
  
  public hjz(Context paramContext, boolean paramBoolean)
  {
    a = paramContext;
    b = ((AudioManager)paramContext.getSystemService("audio"));
    if (l()) {
      i.add(hkd.b);
    }
    i.add(hkd.a);
    if ((paramBoolean) || (!l())) {}
    for (paramContext = hkd.a;; paramContext = hkd.b)
    {
      g = paramContext;
      return;
    }
  }
  
  private static boolean a(TelephonyManager paramTelephonyManager)
  {
    try
    {
      paramTelephonyManager = (Boolean)Class.forName(paramTelephonyManager.getClass().getName()).getDeclaredMethod("isVoiceCapable", new Class[0]).invoke(paramTelephonyManager, new Object[0]);
      if ((paramTelephonyManager != null) && (paramTelephonyManager.booleanValue())) {
        return true;
      }
    }
    catch (ClassNotFoundException paramTelephonyManager)
    {
      for (;;)
      {
        hbs.a(paramTelephonyManager.toString());
        paramTelephonyManager = null;
      }
      return false;
    }
    catch (IllegalAccessException paramTelephonyManager)
    {
      for (;;) {}
    }
    catch (NoSuchMethodException paramTelephonyManager)
    {
      for (;;) {}
    }
    catch (InvocationTargetException paramTelephonyManager)
    {
      for (;;) {}
    }
  }
  
  private void b(boolean paramBoolean)
  {
    boolean bool = b.isSpeakerphoneOn();
    hlk.a(3, "vclib", 37 + "setSpeakerphoneOn(" + paramBoolean + "), wasOn=" + bool);
    b.setSpeakerphoneOn(paramBoolean);
  }
  
  private boolean m()
  {
    hlk.a(3, "vclib", "turnOffBluetooth");
    if ((h != hke.d) && (h != hke.e))
    {
      String str = String.valueOf(h);
      hlk.a(3, "vclib", String.valueOf(str).length() + 52 + "turnOffBluetooth: state is already " + str + ", cannot turn off");
      return false;
    }
    g();
    return true;
  }
  
  public void a()
  {
    synchronized (d)
    {
      if (e)
      {
        hlk.a(3, "vclib", "releaseBluetoothAudio");
        if (k != null)
        {
          g();
          i();
          a.unregisterReceiver(m);
          m = null;
          k.closeProfileProxy(1, l);
          l = null;
          n = null;
          k = null;
        }
        hlk.a(3, "vclib", "releaseWiredHeadsetAudio");
        a.unregisterReceiver(c);
        b.setMode(0);
        b.abandonAudioFocus(null);
        boolean bool = f;
        hlk.a(4, "vclib", 42 + "Restoring saved speakerphone state to" + bool);
        b(f);
        e = false;
      }
      q = null;
      return;
    }
  }
  
  public void a(hkd paramhkd)
  {
    for (;;)
    {
      synchronized (d)
      {
        switch (hkc.a[paramhkd.ordinal()])
        {
        case 1: 
          e();
          return;
          o = h;
          hlk.a(3, "vclib", "turnOnBluetooth");
          if ((h == hke.d) || (h == hke.e))
          {
            paramhkd = String.valueOf(h);
            hlk.a(3, "vclib", String.valueOf(paramhkd).length() + 50 + "turnOnBluetooth: state is already " + paramhkd + ", cannot turn on");
          }
          break;
        }
      }
      f();
      continue;
      if ((!e) || (m())) {
        o = hke.a;
      }
      for (;;)
      {
        b(true);
        break;
        h = hke.a;
      }
      if ((!e) || (m())) {
        o = hke.c;
      }
      for (;;)
      {
        b(false);
        break;
        h = hke.c;
      }
      if ((!e) || (m())) {
        o = hke.b;
      }
      for (;;)
      {
        b(false);
        break;
        h = hke.b;
      }
    }
  }
  
  public void a(hki paramhki)
  {
    j = paramhki;
  }
  
  public void a(hks arg1)
  {
    if (q == null)
    {
      hbs.a("Must use CallClient", ??? instanceof hcd);
      q = ((hcd)???);
      synchronized (d)
      {
        if (!e) {
          hbw.a(p);
        }
        a(r);
        c_(s);
        return;
      }
    }
  }
  
  public void a(boolean paramBoolean)
  {
    boolean bool2 = true;
    r = paramBoolean;
    for (;;)
    {
      synchronized (d)
      {
        if (q != null)
        {
          if (!paramBoolean)
          {
            bool1 = true;
            WebRtcAudioRecord.setMicrophoneMute(bool1);
            if (paramBoolean) {
              break label102;
            }
            bool1 = true;
            hlk.a(3, "vclib", 33 + "Setting audio mute state to " + bool1);
            hcd localhcd = q;
            if (paramBoolean) {
              break label107;
            }
            paramBoolean = bool2;
            localhcd.a(paramBoolean);
          }
        }
        else {
          return;
        }
      }
      boolean bool1 = false;
      continue;
      label102:
      bool1 = false;
      continue;
      label107:
      paramBoolean = false;
    }
  }
  
  public boolean b()
  {
    return r;
  }
  
  public hke c()
  {
    return h;
  }
  
  public void c_(boolean paramBoolean)
  {
    s = paramBoolean;
    if (!paramBoolean) {}
    for (paramBoolean = true;; paramBoolean = false)
    {
      WebRtcAudioTrack.setAudioMute(paramBoolean);
      return;
    }
  }
  
  public Set<hkd> d()
  {
    return i;
  }
  
  void e()
  {
    String str1 = String.valueOf(h);
    String str2 = String.valueOf(i);
    hlk.a(3, "vclib", String.valueOf(str1).length() + 30 + String.valueOf(str2).length() + "reportUpdate: state=" + str1 + ", devices=" + str2);
    aal.a(new hkb(this));
  }
  
  void f()
  {
    hlk.a(3, "vclib", "startBluetoothSco");
    i();
    if (l == null) {}
    for (;;)
    {
      return;
      Object localObject;
      if (n == null)
      {
        localObject = l.getConnectedDevices();
        if (((List)localObject).size() > 0) {
          n = ((BluetoothDevice)((List)localObject).get(0));
        }
      }
      if (n != null)
      {
        if (Build.VERSION.SDK_INT >= 18)
        {
          hlk.a(3, "vclib", "startBluetoothSco : JBMR2+ Workaround");
          try
          {
            localObject = Class.forName(l.getClass().getName()).getDeclaredMethod("startScoUsingVirtualVoiceCall", new Class[] { BluetoothDevice.class });
            ((Method)localObject).setAccessible(true);
            localObject = (Boolean)((Method)localObject).invoke(l, new Object[] { n });
            if ((localObject != null) && (((Boolean)localObject).booleanValue())) {
              h = hke.e;
            }
          }
          catch (ClassNotFoundException localClassNotFoundException)
          {
            for (;;)
            {
              hbs.a(localClassNotFoundException.toString());
            }
          }
          catch (NoSuchMethodException localNoSuchMethodException)
          {
            for (;;)
            {
              hbs.a(localNoSuchMethodException.toString());
            }
          }
          catch (InvocationTargetException localInvocationTargetException)
          {
            for (;;)
            {
              hbs.a(localInvocationTargetException.toString());
            }
          }
          catch (IllegalAccessException localIllegalAccessException)
          {
            for (;;)
            {
              hbs.a(localIllegalAccessException.toString());
            }
          }
          hlk.a(3, "vclib", "done");
        }
        while (h == hke.e)
        {
          e();
          h();
          return;
          hlk.a(3, "vclib", "startBluetoothSco : pre-JBMR2");
          b.startBluetoothSco();
          h = hke.e;
        }
      }
    }
  }
  
  void g()
  {
    hlk.a(3, "vclib", "stopBluetoothSco");
    i();
    if (l == null) {}
    for (;;)
    {
      return;
      if (n != null)
      {
        if (Build.VERSION.SDK_INT >= 18)
        {
          try
          {
            hlk.a(3, "vclib", "stopBluetoothSco : JBMR2+ Workaround");
            Object localObject = Class.forName(l.getClass().getName()).getDeclaredMethod("stopScoUsingVirtualVoiceCall", new Class[] { BluetoothDevice.class });
            ((Method)localObject).setAccessible(true);
            localObject = (Boolean)((Method)localObject).invoke(l, new Object[] { n });
            if ((localObject != null) && (((Boolean)localObject).booleanValue())) {
              h = hke.f;
            }
          }
          catch (ClassNotFoundException localClassNotFoundException)
          {
            for (;;)
            {
              hbs.a(localClassNotFoundException.toString());
            }
          }
          catch (NoSuchMethodException localNoSuchMethodException)
          {
            for (;;)
            {
              hbs.a(localNoSuchMethodException.toString());
            }
          }
          catch (InvocationTargetException localInvocationTargetException)
          {
            for (;;)
            {
              hbs.a(localInvocationTargetException.toString());
            }
          }
          catch (IllegalAccessException localIllegalAccessException)
          {
            for (;;)
            {
              hbs.a(localIllegalAccessException.toString());
            }
          }
          hlk.a(3, "vclib", "done");
        }
        while (h == hke.f)
        {
          e();
          h();
          return;
          hlk.a(3, "vclib", "stopBluetoothSco : pre-JBMR2");
          b.stopBluetoothSco();
          h = hke.f;
        }
      }
    }
  }
  
  void h()
  {
    hlk.a(3, "vclib", "Starting bluetooth timer");
    aal.a(t, 5000L);
  }
  
  void i()
  {
    hlk.a(3, "vclib", "Canceling bluetooth timer");
    Runnable localRunnable = t;
    aal.y().removeCallbacks(localRunnable);
  }
  
  void j()
  {
    hlk.a(3, "vclib", "Starting or stopping Bluetooth timed out");
    i();
    switch (hkc.b[h.ordinal()])
    {
    default: 
      return;
    case 1: 
      if ((l != null) && (n != null) && (l.isAudioConnected(n)))
      {
        hlk.a(6, "vclib", "We thought BT had timed out, but it's actually on; updating state.");
        h = hke.d;
      }
      for (;;)
      {
        e();
        return;
        g();
        k();
      }
    }
    if ((l == null) || (n == null) || (!l.isAudioConnected(n)))
    {
      hlk.a(6, "vclib", "We thought BT had timed out, but it's actually off; updating state.");
      k();
    }
    for (;;)
    {
      e();
      return;
      h = hke.d;
    }
  }
  
  void k()
  {
    if ((o == null) || ((o == hke.c) && (!i.contains(hkd.d))))
    {
      str1 = String.valueOf("usePendingAudioDeviceState: there's no pending state or it was WH, but has been unplugged; using default device. Pending state was ");
      String str2 = String.valueOf(o);
      hlk.a(6, "vclib", String.valueOf(str1).length() + 0 + String.valueOf(str2).length() + str1 + str2);
      o = null;
      a(g);
      return;
    }
    String str1 = String.valueOf(o);
    hlk.a(3, "vclib", String.valueOf(str1).length() + 34 + "usePendingAudioDeviceState: using " + str1);
    h = o;
    o = null;
    if (h == hke.a) {}
    for (boolean bool = true;; bool = false)
    {
      b(bool);
      e();
      return;
    }
  }
  
  public boolean l()
  {
    TelephonyManager localTelephonyManager = (TelephonyManager)a.getSystemService("phone");
    if (Build.VERSION.SDK_INT >= 22) {
      return a(localTelephonyManager);
    }
    return localTelephonyManager.getPhoneType() != 0;
  }
}

/* Location:
 * Qualified Name:     hjz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */