import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;

final class hcp
  extends BroadcastReceiver
{
  boolean a = true;
  
  hcp(hci paramhci) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    
    if ((NetworkInfo)paramIntent.getParcelableExtra("networkInfo") == null) {}
    do
    {
      do
      {
        return;
      } while (!b.c());
      paramContext = b.b.getAllNetworkInfo();
      int k = paramContext.length;
      int i = 0;
      int j = 0;
      while (i < k)
      {
        paramIntent = paramContext[i];
        if (hlk.a())
        {
          String str = String.valueOf(paramIntent.getTypeName());
          boolean bool = paramIntent.isConnected();
          new StringBuilder(String.valueOf(str).length() + 27).append("Network: ").append(str).append(", connected? ").append(bool);
        }
        if (paramIntent.isConnected()) {
          j = 1;
        }
        i += 1;
      }
      if (j != 0)
      {
        a = true;
        return;
      }
    } while (!a);
    hlk.a(4, "vclib", "We lost our connection. Give it some time to recover then  terminate the call if it can't.");
    a = false;
    aal.a(new hcq(this), 10000L);
  }
}

/* Location:
 * Qualified Name:     hcp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */