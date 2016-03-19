import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;

public final class atj
  implements atn
{
  final ath a;
  boolean b;
  private final Context c;
  private boolean d;
  private final BroadcastReceiver e = new atk(this);
  
  public atj(Context paramContext, ath paramath)
  {
    c = paramContext.getApplicationContext();
    a = paramath;
  }
  
  static boolean a(Context paramContext)
  {
    paramContext = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo();
    return (paramContext != null) && (paramContext.isConnected());
  }
  
  public void e()
  {
    if (d)
    {
      c.unregisterReceiver(e);
      d = false;
    }
  }
  
  public void h_() {}
  
  public void s_()
  {
    if (!d)
    {
      b = a(c);
      c.registerReceiver(e, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
      d = true;
    }
  }
}

/* Location:
 * Qualified Name:     atj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */