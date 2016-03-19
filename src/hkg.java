import android.bluetooth.BluetoothDevice;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import java.util.Set;

final class hkg
  extends BroadcastReceiver
{
  hkg(hjz paramhjz) {}
  
  private void a()
  {
    if ((a.h == hke.d) || (a.h == hke.e) || (a.h == hke.f)) {
      a.k();
    }
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    paramContext = paramIntent.getAction();
    int i;
    if (paramContext.equals("android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"))
    {
      i = paramIntent.getIntExtra("android.bluetooth.profile.extra.STATE", 10);
      if (i == 12)
      {
        hlk.a(3, "vclib", "ACTION_AUDIO_STATE_CHANGED : STATE_AUDIO_CONNECTED");
        a.h = hke.d;
        a.i();
        a.e();
      }
    }
    label61:
    do
    {
      break label61;
      do
      {
        do
        {
          return;
        } while (i != 10);
        hlk.a(3, "vclib", "ACTION_AUDIO_STATE_CHANGED : STATE_AUDIO_DISCONNECTED");
        if (isInitialStickyBroadcast()) {
          break;
        }
        a.i();
        a();
        a.e();
        return;
        if (!paramContext.equals("android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED")) {
          break;
        }
        i = paramIntent.getIntExtra("android.bluetooth.profile.extra.STATE", 0);
        paramContext = String.valueOf("BluetoothReceiver.onReceive: got ACTION_CONNECTION_STATE_CHANGED, profileState=");
        boolean bool = isInitialStickyBroadcast();
        hlk.a(3, "vclib", String.valueOf(paramContext).length() + 34 + paramContext + i + ", isInitialSticky=" + bool);
        paramContext = (BluetoothDevice)paramIntent.getParcelableExtra("android.bluetooth.device.extra.DEVICE");
        switch (i)
        {
        case 1: 
        default: 
          return;
        case 0: 
          hlk.a(3, "vclib", "ACTION_CONNECTION_STATE_CHANGED : STATE_DISCONNECTED");
          a.g();
          a();
          a.n = null;
        }
      } while (!a.i.contains(hkd.c));
      a.i.remove(hkd.c);
      a.e();
      return;
      hlk.a(3, "vclib", "ACTION_CONNECTION_STATE_CHANGED : STATE_CONNECTED");
      a.i.add(hkd.c);
      a.e();
    } while (a.n != null);
    a.n = paramContext;
    a.a(hkd.c);
  }
}

/* Location:
 * Qualified Name:     hkg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */