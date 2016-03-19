import android.net.ConnectivityManager.NetworkCallback;
import android.net.Network;
import android.os.Handler;

final class euj
  extends ConnectivityManager.NetworkCallback
{
  private final Handler b = new Handler();
  
  euj(euh parameuh) {}
  
  private void a()
  {
    b.post(new euk(this));
  }
  
  public void onAvailable(Network paramNetwork)
  {
    ezi.c("Babel_telephony", "TeleWifiMonitor.NetworkCallback.onAvailable", new Object[0]);
    a();
  }
  
  public void onLosing(Network paramNetwork, int paramInt)
  {
    ezi.c("Babel_telephony", "TeleWifiMonitor.NetworkCallback.onLosing", new Object[0]);
    a();
  }
  
  public void onLost(Network paramNetwork)
  {
    ezi.c("Babel_telephony", "TeleWifiMonitor.NetworkCallback.onLost", new Object[0]);
    a();
  }
}

/* Location:
 * Qualified Name:     euj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */