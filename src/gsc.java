import android.app.Service;
import android.content.Intent;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Looper;
import android.util.Log;

public class gsc
  extends Service
  implements avb, gri, grs
{
  String a;
  Handler b;
  Object c = new Object();
  boolean d;
  private volatile int e = -1;
  private IBinder f;
  
  public void a(grl paramgrl) {}
  
  public void a(gru paramgru) {}
  
  public final IBinder onBind(Intent paramIntent)
  {
    if ("com.google.android.gms.wearable.BIND_LISTENER".equals(paramIntent.getAction())) {
      return f;
    }
    return null;
  }
  
  public void onCreate()
  {
    super.onCreate();
    if (Log.isLoggable("WearableLS", 3)) {
      new StringBuilder("onCreate: ").append(getPackageName());
    }
    a = getPackageName();
    HandlerThread localHandlerThread = new HandlerThread("WearableListenerService");
    localHandlerThread.start();
    b = new Handler(localHandlerThread.getLooper());
    f = new gsd(this);
  }
  
  public void onDestroy()
  {
    synchronized (c)
    {
      d = true;
      if (b == null) {
        throw new IllegalStateException("onDestroy: mServiceHandler not set, did you override onCreate() but forget to call super.onCreate()?");
      }
    }
    b.getLooper().quit();
    super.onDestroy();
  }
}

/* Location:
 * Qualified Name:     gsc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */