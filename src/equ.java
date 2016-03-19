import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.ConnectivityManager.NetworkCallback;
import android.net.NetworkRequest.Builder;
import android.telephony.TelephonyManager;

final class equ
{
  static final boolean a = false;
  final Context b;
  eqv c;
  erc d;
  boolean e;
  private BroadcastReceiver f;
  private eqw g;
  private ConnectivityManager.NetworkCallback h;
  
  static
  {
    imx localimx = ezi.s;
  }
  
  equ(Context paramContext)
  {
    b = paramContext;
    e = aal.k(paramContext);
  }
  
  void a()
  {
    c = null;
    ((TelephonyManager)b.getSystemService("phone")).listen(g, 0);
    try
    {
      b.unregisterReceiver(f);
      ((ConnectivityManager)b.getSystemService("connectivity")).unregisterNetworkCallback(h);
      return;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      String str = String.valueOf(localIllegalArgumentException);
      ezi.c("Babel_telephony", String.valueOf(str).length() + 27 + "unregisterReceiver failed, " + str, new Object[0]);
    }
  }
  
  void a(eqv parameqv)
  {
    ezi.c("Babel_telephony", "TeleCellMonitor.register", new Object[0]);
    hbs.a();
    c = parameqv;
    parameqv = new IntentFilter();
    parameqv.addAction("android.net.conn.CONNECTIVITY_CHANGE");
    f = new eqz(this);
    b.registerReceiver(f, parameqv);
    parameqv = (TelephonyManager)b.getSystemService("phone");
    g = new eqw(this);
    parameqv.listen(g, 257);
    parameqv = new NetworkRequest.Builder().addTransportType(0).build();
    h = new eqx(this);
    ((ConnectivityManager)b.getSystemService("connectivity")).registerNetworkCallback(parameqv, h);
  }
  
  public erc b()
  {
    return d;
  }
}

/* Location:
 * Qualified Name:     equ
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */