import android.content.Context;
import android.net.ConnectivityManager;
import android.net.ConnectivityManager.NetworkCallback;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.net.NetworkRequest;

public final class mqj
{
  private final ConnectivityManager a;
  
  mqj()
  {
    a = null;
  }
  
  public mqj(Context paramContext)
  {
    a = ((ConnectivityManager)paramContext.getSystemService("connectivity"));
  }
  
  private static mqq a(NetworkInfo paramNetworkInfo)
  {
    if ((paramNetworkInfo == null) || (!paramNetworkInfo.isConnected())) {
      return new mqq(false, -1, -1);
    }
    return new mqq(true, paramNetworkInfo.getType(), paramNetworkInfo.getSubtype());
  }
  
  public mqq a()
  {
    return a(a.getActiveNetworkInfo());
  }
  
  public mqq a(Network paramNetwork)
  {
    return a(a.getNetworkInfo(paramNetwork));
  }
  
  public void a(ConnectivityManager.NetworkCallback paramNetworkCallback)
  {
    a.unregisterNetworkCallback(paramNetworkCallback);
  }
  
  public void a(NetworkRequest paramNetworkRequest, ConnectivityManager.NetworkCallback paramNetworkCallback)
  {
    a.registerNetworkCallback(paramNetworkRequest, paramNetworkCallback);
  }
  
  public boolean b(Network paramNetwork)
  {
    paramNetwork = a.getNetworkCapabilities(paramNetwork);
    return (paramNetwork != null) && (paramNetwork.hasCapability(12));
  }
  
  public Network[] b()
  {
    return a.getAllNetworks();
  }
  
  public int c()
  {
    int i = -1;
    NetworkInfo localNetworkInfo1 = a.getActiveNetworkInfo();
    int k;
    if (localNetworkInfo1 == null)
    {
      k = i;
      return k;
    }
    Network[] arrayOfNetwork = b();
    int m = arrayOfNetwork.length;
    int j = 0;
    for (;;)
    {
      k = i;
      if (j >= m) {
        break;
      }
      Network localNetwork = arrayOfNetwork[j];
      k = i;
      if (b(localNetwork))
      {
        NetworkInfo localNetworkInfo2 = a.getNetworkInfo(localNetwork);
        k = i;
        if (localNetworkInfo2 != null)
        {
          k = i;
          if (localNetworkInfo2.getType() == localNetworkInfo1.getType()) {
            k = Integer.parseInt(localNetwork.toString());
          }
        }
      }
      j += 1;
      i = k;
    }
  }
}

/* Location:
 * Qualified Name:     mqj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */