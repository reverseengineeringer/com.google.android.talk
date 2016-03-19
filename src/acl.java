import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;

final class acl
  extends BroadcastReceiver
{
  acl(ack paramack) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    paramContext = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo();
    if ((paramContext == null) || (!paramContext.isConnected())) {
      a.as = false;
    }
    while ((a.as) || (a.t())) {
      return;
    }
    if (!a.ar) {
      a.getLoaderManager().b(2, null, a);
    }
    a.getLoaderManager().b(3, null, a);
    a.as = true;
    a.ak.a(0);
  }
}

/* Location:
 * Qualified Name:     acl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */