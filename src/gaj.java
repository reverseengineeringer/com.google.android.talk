import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import java.util.concurrent.CountDownLatch;

final class gaj
  implements ServiceConnection
{
  gaj(gai paramgai) {}
  
  public void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    gai localgai = a;
    if (paramIBinder == null) {
      paramComponentName = null;
    }
    for (;;)
    {
      gai.a(localgai, paramComponentName);
      gai.a(a).countDown();
      return;
      paramComponentName = paramIBinder.queryLocalInterface("com.google.android.gms.http.IGoogleHttpService");
      if ((paramComponentName != null) && ((paramComponentName instanceof gak))) {
        paramComponentName = (gak)paramComponentName;
      } else {
        paramComponentName = new gam(paramIBinder);
      }
    }
  }
  
  public void onServiceDisconnected(ComponentName paramComponentName) {}
}

/* Location:
 * Qualified Name:     gaj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */