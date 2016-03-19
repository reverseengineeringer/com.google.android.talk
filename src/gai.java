import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Looper;
import android.os.RemoteException;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

public final class gai
{
  private static final ComponentName a = new ComponentName("com.google.android.gms", "com.google.android.gms.gcm.http.GoogleHttpService");
  private final flo b;
  private ServiceConnection c;
  private volatile gak d;
  private int e;
  private CountDownLatch f;
  private Context g;
  private boolean h;
  
  public gai(Context paramContext)
  {
    g = paramContext;
    f = new CountDownLatch(1);
    b = flo.a(g);
    e = 0;
    h = false;
    c = new gaj(this);
  }
  
  private boolean a()
  {
    try
    {
      int i = e;
      e = (i + 1);
      if (i == 0) {
        h = b.a(a, c, "GoogleHttpServiceClient");
      }
      boolean bool = h;
      return bool;
    }
    finally {}
  }
  
  private void b()
  {
    try
    {
      int i = e - 1;
      e = i;
      if (i == 0) {
        b.b(a, c, "GoogleHttpServiceClient");
      }
      return;
    }
    finally {}
  }
  
  public Bundle a(String paramString)
  {
    Bundle localBundle = null;
    if (!a())
    {
      b();
      return null;
    }
    try
    {
      if ((d == null) && (Looper.getMainLooper().getThread() != Thread.currentThread()) && (!f.await(500L, TimeUnit.MILLISECONDS)))
      {
        new Throwable();
        f.countDown();
      }
      if (d != null) {
        localBundle = d.a(paramString);
      }
      return localBundle;
    }
    catch (RemoteException paramString)
    {
      return null;
    }
    catch (InterruptedException paramString)
    {
      new StringBuilder("Interrupted waiting for binder: ").append(paramString);
      return null;
    }
    finally
    {
      b();
    }
  }
  
  public void a(String paramString, int paramInt)
  {
    if (!a())
    {
      b();
      return;
    }
    try
    {
      if ((d != null) && (paramInt > 0)) {
        d.a(paramString, paramInt);
      }
      return;
    }
    catch (RemoteException paramString) {}finally
    {
      b();
    }
  }
}

/* Location:
 * Qualified Name:     gai
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */