import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;
import android.os.RemoteException;

public final class eux
  extends ffy
  implements ServiceConnection
{
  private final Context a;
  private final String b;
  private evg c;
  private boolean d;
  
  public eux(Context paramContext, String paramString, evg paramevg)
  {
    a = paramContext;
    b = paramString;
    c = paramevg;
  }
  
  private void a()
  {
    c = null;
    if (d)
    {
      a.unbindService(this);
      d = false;
    }
  }
  
  private void b(int paramInt)
  {
    evg localevg = c;
    aal.y().post(new euy(this, localevg, paramInt));
    a();
  }
  
  public void a(int paramInt)
  {
    aal.t(a);
    ezi.e("Babel_telephony", "TeleGetProxyNumberConnection.onError, failed with errorCode: %d", new Object[] { Integer.valueOf(paramInt) });
    b(2);
  }
  
  public void a(String paramString1, String paramString2)
  {
    aal.t(a);
    ezi.c("Babel_telephony", "TeleGetProxyNumberConnection.onReceiveProxyNumber, received proxy number", new Object[0]);
    paramString1 = String.valueOf(c);
    ezi.c("Babel_telephony", String.valueOf(paramString1).length() + 54 + "TeleGetProxyNumberConnection.handleSuccess, callback: " + paramString1, new Object[0]);
    paramString1 = c;
    aal.y().post(new euz(this, paramString1, paramString2));
    a();
  }
  
  public void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    ezi.c("Babel_telephony", "TeleGetProxyNumberConnection.onServiceConnected", new Object[0]);
    d = true;
    paramComponentName = fgb.a(paramIBinder);
    try
    {
      if (paramComponentName.a() >= aal.a(a, "babel_telephony_min_voice_service_api_version_to_enable_proxy_number", 3))
      {
        paramComponentName.a(b, this);
        return;
      }
      b(1);
      return;
    }
    catch (RemoteException paramComponentName)
    {
      ezi.d("Babel_telephony", "TeleGetProxyNumberConnection.onServiceConnected, calling VoiceService failed", paramComponentName);
      b(2);
    }
  }
  
  public void onServiceDisconnected(ComponentName paramComponentName)
  {
    ezi.c("Babel_telephony", "TeleGetProxyNumberConnection.onServiceDisconnected", new Object[0]);
    b(2);
  }
}

/* Location:
 * Qualified Name:     eux
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */