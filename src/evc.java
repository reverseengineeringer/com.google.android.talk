import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;
import android.os.RemoteException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public final class evc
  implements ServiceConnection
{
  static final Intent a = new Intent("com.google.android.dialer.incallui.IInCallUiControllerService").setPackage("com.google.android.dialer");
  final List<eve> b = new ArrayList();
  final Handler c = new Handler();
  private final Context d;
  private fgg e;
  private boolean f;
  private final Set<Object> g = new HashSet();
  
  public evc(Context paramContext)
  {
    if (paramContext == null) {
      throw new IllegalArgumentException("context cannot be null");
    }
    d = paramContext;
  }
  
  private boolean a()
  {
    return e != null;
  }
  
  private void b()
  {
    f = false;
    e = null;
    Object localObject = new ArrayList(b);
    b.clear();
    localObject = ((List)localObject).iterator();
    while (((Iterator)localObject).hasNext()) {
      ((eve)((Iterator)localObject).next()).b();
    }
  }
  
  public evf a(Intent paramIntent, evd paramevd)
  {
    Object localObject = String.valueOf(paramIntent);
    ezi.c("Babel_telephony", String.valueOf(localObject).length() + 35 + "TeleInCallUiController.showDialog, " + (String)localObject, new Object[0]);
    paramIntent = PendingIntent.getActivity(d, 0, paramIntent, 1207959552);
    localObject = new eve(this, paramIntent, paramevd);
    if (a())
    {
      a(paramIntent, paramevd);
      return (evf)localObject;
    }
    ezi.c("Babel_telephony", "TeleInCallUiController.showDialog, not connected; queueing showDialog", new Object[0]);
    b.add(localObject);
    long l = aal.a(d, "babel_in_call_ui_visible_timeout_ms", 5000L);
    ezi.c("Babel_telephony", 75 + "TeleInCallUiController.showDialog, scheduling timeout: " + l, new Object[0]);
    c.postDelayed((Runnable)localObject, l);
    return (evf)localObject;
  }
  
  void a(PendingIntent paramPendingIntent, evd paramevd)
  {
    try
    {
      e.a(paramPendingIntent);
      return;
    }
    catch (RemoteException paramPendingIntent)
    {
      ezi.d("Babel_telephony", "TeleInCallUiController.performShowDialog", paramPendingIntent);
      paramevd.a();
    }
  }
  
  public void a(PrintWriter paramPrintWriter)
  {
    paramPrintWriter.append("TeleInCallUiController\n");
    paramPrintWriter.append("  connections: {\n");
    Iterator localIterator = g.iterator();
    Object localObject;
    while (localIterator.hasNext())
    {
      localObject = localIterator.next();
      paramPrintWriter.append("    ").append(String.valueOf(localObject)).append("\n");
    }
    paramPrintWriter.append("  }\n");
    paramPrintWriter.append("  queuedActions: {\n");
    localIterator = b.iterator();
    while (localIterator.hasNext())
    {
      localObject = (eve)localIterator.next();
      paramPrintWriter.append("    ").append(String.valueOf(localObject));
    }
    paramPrintWriter.append("  }\n");
  }
  
  public boolean a(Object paramObject)
  {
    g.add(paramObject);
    if ((a()) || (f))
    {
      ezi.c("Babel_telephony", "TeleInCallUiController.connect, bind already in progress; skipping.", new Object[0]);
      return true;
    }
    f = d.bindService(a, this, 1);
    if (f) {
      ezi.c("Babel_telephony", "TeleInCallUiController.connect, bound to service", new Object[0]);
    }
    for (;;)
    {
      return f;
      ezi.c("Babel_telephony", "TeleInCallUiController.connect, unable to bind to service", new Object[0]);
    }
  }
  
  public void b(Object paramObject)
  {
    g.remove(paramObject);
    if (!g.isEmpty())
    {
      int i = g.size();
      ezi.c("Babel_telephony", 83 + "TeleInCallUiController.disconnect, ignoring disconnect (" + i + " remaining uses)", new Object[0]);
      return;
    }
    if ((!a()) && (!f))
    {
      ezi.c("Babel_telephony", "TeleInCallUiController.disconnect, service not bound, ignoring", new Object[0]);
      return;
    }
    ezi.c("Babel_telephony", "TeleInCallUiController.disconnect, disconnecting", new Object[0]);
    d.unbindService(this);
    b();
  }
  
  public void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    paramComponentName = String.valueOf(paramComponentName);
    ezi.c("Babel_telephony", String.valueOf(paramComponentName).length() + 56 + "TeleInCallUiController.onServiceConnected, connected to " + paramComponentName, new Object[0]);
    f = false;
    if (paramIBinder == null) {
      paramComponentName = null;
    }
    for (;;)
    {
      e = paramComponentName;
      paramComponentName = new ArrayList(b);
      b.clear();
      paramComponentName = paramComponentName.iterator();
      while (paramComponentName.hasNext()) {
        ((eve)paramComponentName.next()).a();
      }
      paramComponentName = paramIBinder.queryLocalInterface("com.google.android.dialer.incallui.IInCallUiControllerService");
      if ((paramComponentName != null) && ((paramComponentName instanceof fgg))) {
        paramComponentName = (fgg)paramComponentName;
      } else {
        paramComponentName = new fgi(paramIBinder);
      }
    }
  }
  
  public void onServiceDisconnected(ComponentName paramComponentName)
  {
    paramComponentName = String.valueOf(paramComponentName);
    ezi.c("Babel_telephony", String.valueOf(paramComponentName).length() + 64 + "TeleInCallUiController.onServiceDisconnected, disconnected from " + paramComponentName, new Object[0]);
    b();
  }
}

/* Location:
 * Qualified Name:     evc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */