import android.net.ConnectivityManager;
import android.net.NetworkInfo;

final class gp
  implements gn
{
  public boolean a(ConnectivityManager paramConnectivityManager)
  {
    paramConnectivityManager = paramConnectivityManager.getActiveNetworkInfo();
    if (paramConnectivityManager != null) {}
    switch (paramConnectivityManager.getType())
    {
    case 0: 
    case 2: 
    case 3: 
    case 4: 
    case 5: 
    case 6: 
    case 8: 
    default: 
      return true;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     gp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */