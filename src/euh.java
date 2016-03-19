import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.ConnectivityManager.NetworkCallback;
import android.net.NetworkRequest.Builder;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;

final class euh
{
  static final boolean a = false;
  final Context b;
  eui c;
  eum d;
  private BroadcastReceiver e;
  private ConnectivityManager.NetworkCallback f;
  
  static
  {
    imx localimx = ezi.s;
  }
  
  euh(Context paramContext)
  {
    b = paramContext;
  }
  
  static eum a(Context paramContext)
  {
    if (!aal.l(paramContext)) {
      return new eum(false, 0, 0);
    }
    paramContext = ((WifiManager)paramContext.getSystemService("wifi")).getConnectionInfo();
    return new eum(true, WifiManager.calculateSignalLevel(paramContext.getRssi(), 100), paramContext.getLinkSpeed());
  }
  
  void a()
  {
    c = null;
    try
    {
      b.unregisterReceiver(e);
      ((ConnectivityManager)b.getSystemService("connectivity")).unregisterNetworkCallback(f);
      return;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      String str1 = String.valueOf(localIllegalArgumentException);
      ezi.c("Babel_telephony", String.valueOf(str1).length() + 27 + "unregisterReceiver failed, " + str1, new Object[0]);
      return;
    }
    catch (NoSuchMethodError localNoSuchMethodError)
    {
      String str2 = String.valueOf(localNoSuchMethodError);
      ezi.c("Babel_telephony", String.valueOf(str2).length() + 34 + "unregisterNetworkCallback failed, " + str2, new Object[0]);
    }
  }
  
  void a(eui parameui)
  {
    hbs.a();
    c = parameui;
    parameui = new IntentFilter();
    parameui.addAction("android.net.conn.CONNECTIVITY_CHANGE");
    parameui.addAction("android.net.wifi.RSSI_CHANGED");
    e = new eul(this);
    b.registerReceiver(e, parameui);
    parameui = new NetworkRequest.Builder().addTransportType(1).build();
    f = new euj(this);
    ConnectivityManager localConnectivityManager = (ConnectivityManager)b.getSystemService("connectivity");
    try
    {
      localConnectivityManager.registerNetworkCallback(parameui, f);
      return;
    }
    catch (NoSuchMethodError parameui)
    {
      parameui = String.valueOf(parameui);
      ezi.c("Babel_telephony", String.valueOf(parameui).length() + 32 + "registerNetworkCallback failed, " + parameui, new Object[0]);
    }
  }
}

/* Location:
 * Qualified Name:     euh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */