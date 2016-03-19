import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;

public final class flh
  implements ServiceConnection
{
  private final int b;
  
  public flh(flc paramflc, int paramInt)
  {
    b = paramInt;
  }
  
  public void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    aal.b(paramIBinder, "Expecting a valid IBinder");
    flc localflc = a;
    if (paramIBinder == null) {
      paramComponentName = null;
    }
    for (;;)
    {
      flc.a(localflc, paramComponentName);
      a.a(b);
      return;
      paramComponentName = paramIBinder.queryLocalInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
      if ((paramComponentName != null) && ((paramComponentName instanceof fma))) {
        paramComponentName = (fma)paramComponentName;
      } else {
        paramComponentName = new fmc(paramIBinder);
      }
    }
  }
  
  public void onServiceDisconnected(ComponentName paramComponentName)
  {
    a.b.sendMessage(a.b.obtainMessage(4, b, 1));
  }
}

/* Location:
 * Qualified Name:     flh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */