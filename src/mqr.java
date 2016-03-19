import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;

public final class mqr
{
  private final Context a;
  private final WifiManager b;
  private final boolean c;
  
  mqr()
  {
    a = null;
    b = null;
    c = false;
  }
  
  public mqr(Context paramContext)
  {
    a = paramContext;
    boolean bool;
    if (a.getPackageManager().checkPermission("android.permission.ACCESS_WIFI_STATE", a.getPackageName()) == 0)
    {
      bool = true;
      c = bool;
      if (!c) {
        break label69;
      }
    }
    label69:
    for (paramContext = (WifiManager)a.getSystemService("wifi");; paramContext = null)
    {
      b = paramContext;
      return;
      bool = false;
      break;
    }
  }
  
  public String a()
  {
    Object localObject = a.registerReceiver(null, new IntentFilter("android.net.wifi.STATE_CHANGE"));
    if (localObject != null)
    {
      localObject = (WifiInfo)((Intent)localObject).getParcelableExtra("wifiInfo");
      if (localObject != null)
      {
        localObject = ((WifiInfo)localObject).getSSID();
        if (localObject != null) {
          return (String)localObject;
        }
      }
    }
    return "";
  }
  
  public int b()
  {
    if ((!c) || (b == null)) {}
    WifiInfo localWifiInfo;
    do
    {
      return -1;
      localWifiInfo = b.getConnectionInfo();
    } while (localWifiInfo == null);
    return localWifiInfo.getLinkSpeed();
  }
  
  public boolean c()
  {
    return c;
  }
}

/* Location:
 * Qualified Name:     mqr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */