import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;

final class hiz
  implements ServiceConnection
{
  hiz(hiy paramhiy) {}
  
  public void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    hlk.a(4, "vclib", "onServiceConnected");
    if (paramIBinder == null) {
      hlk.a(6, "vclib", "Failed to bind to CallService.");
    }
    do
    {
      return;
      if (!(paramIBinder instanceof hcr))
      {
        hlk.a(6, "vclib", "CallService does not appear to be running in the current process. This is most likely because the application crashed and restarted the service in another process. This instance will be unusable.");
        return;
      }
      a.c = ((hcr)paramIBinder);
    } while ((a.b == null) || (!a.b.k()));
    a.c.a(a.b);
  }
  
  public void onServiceDisconnected(ComponentName paramComponentName)
  {
    hlk.a(4, "vclib", "onServiceDisconnected");
    a.c = null;
  }
}

/* Location:
 * Qualified Name:     hiz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */