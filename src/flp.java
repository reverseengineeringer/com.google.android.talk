import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Message;
import java.util.HashMap;

final class flp
  extends flo
  implements Handler.Callback
{
  private final HashMap<flq, flr> a = new HashMap();
  private final Context b;
  private final Handler c;
  private final fmm d;
  private final long e;
  
  flp(Context paramContext)
  {
    b = paramContext.getApplicationContext();
    c = new Handler(paramContext.getMainLooper(), this);
    d = fmm.a();
    e = 5000L;
  }
  
  private void a(flq paramflq, ServiceConnection paramServiceConnection)
  {
    aal.b(paramServiceConnection, "ServiceConnection must not be null");
    flr localflr;
    synchronized (a)
    {
      localflr = (flr)a.get(paramflq);
      if (localflr == null) {
        throw new IllegalStateException("Nonexistent connection status for service config: " + paramflq);
      }
    }
    if (!localflr.b(paramServiceConnection)) {
      throw new IllegalStateException("Trying to unbind a GmsServiceConnection  that was not bound before.  config=" + paramflq);
    }
    localflr.a(paramServiceConnection);
    if (localflr.d())
    {
      paramflq = c.obtainMessage(0, localflr);
      c.sendMessageDelayed(paramflq, e);
    }
  }
  
  private boolean a(flq paramflq, ServiceConnection paramServiceConnection, String paramString)
  {
    aal.b(paramServiceConnection, "ServiceConnection must not be null");
    for (;;)
    {
      flr localflr;
      synchronized (a)
      {
        localflr = (flr)a.get(paramflq);
        if (localflr == null)
        {
          localflr = new flr(this, paramflq);
          localflr.a(paramServiceConnection, paramString);
          localflr.a(paramString);
          a.put(paramflq, localflr);
          paramflq = localflr;
          boolean bool = paramflq.b();
          return bool;
        }
        c.removeMessages(0, localflr);
        if (localflr.b(paramServiceConnection)) {
          throw new IllegalStateException("Trying to bind a GmsServiceConnection that was already connected before.  config=" + paramflq);
        }
      }
      localflr.a(paramServiceConnection, paramString);
      switch (localflr.c())
      {
      case 1: 
        paramServiceConnection.onServiceConnected(localflr.f(), localflr.e());
        paramflq = localflr;
        break;
      case 2: 
        localflr.a(paramString);
        paramflq = localflr;
        break;
      default: 
        paramflq = localflr;
      }
    }
  }
  
  public boolean a(ComponentName paramComponentName, ServiceConnection paramServiceConnection, String paramString)
  {
    return a(new flq(paramComponentName), paramServiceConnection, paramString);
  }
  
  public boolean a(String paramString1, ServiceConnection paramServiceConnection, String paramString2)
  {
    return a(new flq(paramString1), paramServiceConnection, paramString2);
  }
  
  public void b(ComponentName paramComponentName, ServiceConnection paramServiceConnection, String paramString)
  {
    a(new flq(paramComponentName), paramServiceConnection);
  }
  
  public void b(String paramString1, ServiceConnection paramServiceConnection, String paramString2)
  {
    a(new flq(paramString1), paramServiceConnection);
  }
  
  public boolean handleMessage(Message arg1)
  {
    switch (what)
    {
    default: 
      return false;
    }
    flr localflr = (flr)obj;
    synchronized (a)
    {
      if (localflr.d())
      {
        if (localflr.b()) {
          localflr.a();
        }
        a.remove(d);
      }
      return true;
    }
  }
}

/* Location:
 * Qualified Name:     flp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */