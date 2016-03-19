import android.bluetooth.BluetoothHeadset;
import android.bluetooth.BluetoothProfile;
import android.bluetooth.BluetoothProfile.ServiceListener;
import java.util.Set;

final class hkh
  implements BluetoothProfile.ServiceListener
{
  hkh(hjz paramhjz) {}
  
  public void onServiceConnected(int paramInt, BluetoothProfile paramBluetoothProfile)
  {
    if (paramInt == 1)
    {
      hlk.a(3, "vclib", "BluetoothProfile.ServiceListener : onServiceConnected");
      a.l = ((BluetoothHeadset)paramBluetoothProfile);
      if (a.h == hke.e) {
        a.f();
      }
    }
  }
  
  public void onServiceDisconnected(int paramInt)
  {
    if (paramInt == 1)
    {
      hlk.a(3, "vclib", "BluetoothProfile.ServiceListener : onServiceDisconnected");
      a.g();
      a.n = null;
      a.l = null;
      if (a.i.remove(hkd.c)) {
        a.e();
      }
    }
  }
}

/* Location:
 * Qualified Name:     hkh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */