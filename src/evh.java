import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.IBinder;

public final class evh
  implements ServiceConnection
{
  private final Context a;
  private evi b;
  
  public evh(Context paramContext, evi paramevi)
  {
    a = paramContext;
    b = paramevi;
  }
  
  public void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    ezi.c("Babel_telephony", "TeleTychoController.HomeVocieNetworkConnection.onServiceConnected", new Object[0]);
    paramComponentName = fgb.a(paramIBinder);
    try
    {
      b.a(true, paramComponentName.b());
      return;
    }
    catch (Exception paramIBinder)
    {
      paramComponentName = String.valueOf("TeleTychoController.HomeVocieNetworkConnection.onServiceConnected, calling isOnHomeVoiceNetwork failed: ");
      paramIBinder = String.valueOf(paramIBinder);
      ezi.e("Babel_telephony", String.valueOf(paramComponentName).length() + 0 + String.valueOf(paramIBinder).length() + paramComponentName + paramIBinder, new Object[0]);
      b.a(false, false);
      return;
    }
    finally
    {
      b = null;
      a.unbindService(this);
    }
  }
  
  public void onServiceDisconnected(ComponentName paramComponentName)
  {
    ezi.c("Babel_telephony", "TeleTychoController.HomeVocieNetworkConnection.onServiceDisconnected", new Object[0]);
    if (b != null)
    {
      b.a(false, false);
      b = null;
    }
  }
}

/* Location:
 * Qualified Name:     evh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */