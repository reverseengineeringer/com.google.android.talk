import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.IBinder;

public final class evj
  implements ServiceConnection
{
  private final Context a;
  
  public evj(Context paramContext)
  {
    a = paramContext;
  }
  
  public void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    ezi.c("Babel_telephony", "TeleTychoController.SimCallManagerChangedConnection.onServiceConnected", new Object[0]);
    paramComponentName = fgb.a(paramIBinder);
    try
    {
      paramComponentName.c();
      return;
    }
    catch (Exception paramIBinder)
    {
      paramComponentName = String.valueOf("TeleTychoController.SimCallManagerChangedConnection.onServiceConnected, calling onSimCallManagerChanged failed: ");
      paramIBinder = String.valueOf(paramIBinder);
      ezi.e("Babel_telephony", String.valueOf(paramComponentName).length() + 0 + String.valueOf(paramIBinder).length() + paramComponentName + paramIBinder, new Object[0]);
      return;
    }
    finally
    {
      a.unbindService(this);
    }
  }
  
  public void onServiceDisconnected(ComponentName paramComponentName)
  {
    ezi.c("Babel_telephony", "TeleTychoController.SimCallManagerChangedConnection.onServiceDisconnected", new Object[0]);
  }
}

/* Location:
 * Qualified Name:     evj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */