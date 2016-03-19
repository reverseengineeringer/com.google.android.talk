import android.net.ConnectivityManager.NetworkCallback;
import android.net.Network;
import android.net.NetworkCapabilities;
import org.chromium.base.ThreadUtils;
import org.chromium.net.NetworkChangeNotifierAutoDetect;

public final class mqk
  extends ConnectivityManager.NetworkCallback
{
  public mqk(NetworkChangeNotifierAutoDetect paramNetworkChangeNotifierAutoDetect) {}
  
  public void onAvailable(Network paramNetwork)
  {
    ThreadUtils.a(new mql(this, Integer.parseInt(paramNetwork.toString()), a.a(a.b.a(paramNetwork))));
  }
  
  public void onCapabilitiesChanged(Network paramNetwork, NetworkCapabilities paramNetworkCapabilities)
  {
    ThreadUtils.a(new mqm(this, Integer.parseInt(paramNetwork.toString()), a.a(a.b.a(paramNetwork))));
  }
  
  public void onLosing(Network paramNetwork, int paramInt)
  {
    ThreadUtils.a(new mqn(this, Integer.parseInt(paramNetwork.toString())));
  }
  
  public void onLost(Network paramNetwork)
  {
    ThreadUtils.a(new mqo(this, Integer.parseInt(paramNetwork.toString())));
  }
}

/* Location:
 * Qualified Name:     mqk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */