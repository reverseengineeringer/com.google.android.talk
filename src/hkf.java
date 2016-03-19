import android.bluetooth.BluetoothAdapter;
import android.content.Context;
import android.content.IntentFilter;
import android.media.AudioManager;
import java.util.Set;

final class hkf
  implements Runnable
{
  hkf(hjz paramhjz) {}
  
  public void run()
  {
    for (int i = 1;; i = 0) {
      synchronized (a.d)
      {
        hbs.b("Expected condition to be false", a.e);
        a.f = a.b.isSpeakerphoneOn();
        boolean bool = a.f;
        hlk.a(3, "vclib", 31 + "initAudio: speakerphone = " + bool);
        a.b.requestAudioFocus(null, 0, 2);
        a.b.setMode(3);
        hjz localhjz = a;
        hlk.a(3, "vclib", "initWiredHeadsetAudio");
        IntentFilter localIntentFilter = new IntentFilter();
        localIntentFilter.addAction("android.intent.action.HEADSET_PLUG");
        a.registerReceiver(c, localIntentFilter);
        a.e = true;
        localhjz = a;
        hlk.a(3, "vclib", "initBluetoothAudio");
        if (k == null) {
          k = BluetoothAdapter.getDefaultAdapter();
        }
        if (k != null)
        {
          k.getProfileProxy(a, new hkh(localhjz), 1);
          localIntentFilter = new IntentFilter();
          localIntentFilter.addAction("android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED");
          localIntentFilter.addAction("android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED");
          m = new hkg(localhjz);
          a.registerReceiver(m, localIntentFilter);
          if (2 == k.getProfileConnectionState(1))
          {
            i.add(hkd.c);
            localhjz.h();
            h = hke.e;
            localhjz.e();
            if (i == 0)
            {
              hlk.a(4, "vclib", "Bluetooth is not connected, using default device.");
              if (a.o == null) {
                a.a(a.g);
              }
            }
            else
            {
              return;
            }
            a.k();
          }
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     hkf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */