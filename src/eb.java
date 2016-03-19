import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Message;
import android.os.RemoteException;
import android.util.Log;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

final class eb
  implements ServiceConnection, Handler.Callback
{
  private final Context a;
  private final HandlerThread b;
  private final Handler c;
  private final Map<ComponentName, ec> d = new HashMap();
  private Set<String> e = new HashSet();
  
  public eb(Context paramContext)
  {
    a = paramContext;
    b = new HandlerThread("NotificationManagerCompat");
    b.start();
    c = new Handler(b.getLooper(), this);
  }
  
  private void a(ec paramec)
  {
    if (b)
    {
      a.unbindService(this);
      b = false;
    }
    c = null;
  }
  
  private void b(ec paramec)
  {
    if (c.hasMessages(3, a)) {
      return;
    }
    e += 1;
    if (e > 6)
    {
      new StringBuilder("Giving up on delivering ").append(d.size()).append(" tasks to ").append(a).append(" after ").append(e).append(" retries");
      d.clear();
      return;
    }
    int i = (1 << e - 1) * 1000;
    if (Log.isLoggable("NotifManCompat", 3)) {
      new StringBuilder("Scheduling retry for ").append(i).append(" ms");
    }
    paramec = c.obtainMessage(3, a);
    c.sendMessageDelayed(paramec, i);
  }
  
  private void c(ec paramec)
  {
    if (Log.isLoggable("NotifManCompat", 3)) {
      new StringBuilder("Processing component ").append(a).append(", ").append(d.size()).append(" queued tasks");
    }
    if (d.isEmpty()) {}
    for (;;)
    {
      return;
      boolean bool;
      if (b)
      {
        bool = true;
        if ((!bool) || (c == null)) {
          b(paramec);
        }
      }
      else
      {
        localObject = new Intent("android.support.BIND_NOTIFICATION_SIDE_CHANNEL").setComponent(a);
        b = a.bindService((Intent)localObject, this, du.a);
        if (b) {
          e = 0;
        }
        for (;;)
        {
          bool = b;
          break;
          new StringBuilder("Unable to bind to listener ").append(a);
          a.unbindService(this);
        }
      }
      Object localObject = (ed)d.peek();
      if (localObject != null) {}
      try
      {
        if (Log.isLoggable("NotifManCompat", 3)) {
          new StringBuilder("Sending task ").append(localObject);
        }
        ((ed)localObject).a(c);
        d.remove();
      }
      catch (DeadObjectException localDeadObjectException)
      {
        if (Log.isLoggable("NotifManCompat", 3)) {
          new StringBuilder("Remote service has died: ").append(a);
        }
        if (d.isEmpty()) {
          continue;
        }
        b(paramec);
        return;
      }
      catch (RemoteException localRemoteException)
      {
        for (;;)
        {
          new StringBuilder("RemoteException communicating with ").append(a);
        }
      }
    }
  }
  
  public void a(ed paramed)
  {
    c.obtainMessage(0, paramed).sendToTarget();
  }
  
  public boolean handleMessage(Message paramMessage)
  {
    Object localObject2;
    Object localObject1;
    switch (what)
    {
    default: 
      return false;
    case 0: 
      paramMessage = (ed)obj;
      localObject2 = du.b(a);
      if (!((Set)localObject2).equals(e))
      {
        e = ((Set)localObject2);
        Object localObject3 = a.getPackageManager().queryIntentServices(new Intent().setAction("android.support.BIND_NOTIFICATION_SIDE_CHANNEL"), 4);
        localObject1 = new HashSet();
        localObject3 = ((List)localObject3).iterator();
        while (((Iterator)localObject3).hasNext())
        {
          ResolveInfo localResolveInfo = (ResolveInfo)((Iterator)localObject3).next();
          if (((Set)localObject2).contains(serviceInfo.packageName))
          {
            ComponentName localComponentName = new ComponentName(serviceInfo.packageName, serviceInfo.name);
            if (serviceInfo.permission != null) {
              new StringBuilder("Permission present on component ").append(localComponentName).append(", not adding listener record.");
            } else {
              ((Set)localObject1).add(localComponentName);
            }
          }
        }
        localObject2 = ((Set)localObject1).iterator();
        while (((Iterator)localObject2).hasNext())
        {
          localObject3 = (ComponentName)((Iterator)localObject2).next();
          if (!d.containsKey(localObject3))
          {
            if (Log.isLoggable("NotifManCompat", 3)) {
              new StringBuilder("Adding listener record for ").append(localObject3);
            }
            d.put(localObject3, new ec((ComponentName)localObject3));
          }
        }
        localObject2 = d.entrySet().iterator();
        while (((Iterator)localObject2).hasNext())
        {
          localObject3 = (Map.Entry)((Iterator)localObject2).next();
          if (!((Set)localObject1).contains(((Map.Entry)localObject3).getKey()))
          {
            if (Log.isLoggable("NotifManCompat", 3)) {
              new StringBuilder("Removing listener record for ").append(((Map.Entry)localObject3).getKey());
            }
            a((ec)((Map.Entry)localObject3).getValue());
            ((Iterator)localObject2).remove();
          }
        }
      }
      localObject1 = d.values().iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (ec)((Iterator)localObject1).next();
        d.add(paramMessage);
        c((ec)localObject2);
      }
      return true;
    case 1: 
      paramMessage = (ea)obj;
      localObject1 = a;
      paramMessage = b;
      localObject1 = (ec)d.get(localObject1);
      if (localObject1 != null)
      {
        if (paramMessage != null) {
          break label532;
        }
        paramMessage = null;
      }
      for (;;)
      {
        c = paramMessage;
        e = 0;
        c((ec)localObject1);
        return true;
        localObject2 = paramMessage.queryLocalInterface("android.support.v4.app.INotificationSideChannel");
        if ((localObject2 != null) && ((localObject2 instanceof cg))) {
          paramMessage = (cg)localObject2;
        } else {
          paramMessage = new ci(paramMessage);
        }
      }
    case 2: 
      label532:
      paramMessage = (ComponentName)obj;
      paramMessage = (ec)d.get(paramMessage);
      if (paramMessage != null) {
        a(paramMessage);
      }
      return true;
    }
    paramMessage = (ComponentName)obj;
    paramMessage = (ec)d.get(paramMessage);
    if (paramMessage != null) {
      c(paramMessage);
    }
    return true;
  }
  
  public void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    if (Log.isLoggable("NotifManCompat", 3)) {
      new StringBuilder("Connected to service ").append(paramComponentName);
    }
    c.obtainMessage(1, new ea(paramComponentName, paramIBinder)).sendToTarget();
  }
  
  public void onServiceDisconnected(ComponentName paramComponentName)
  {
    if (Log.isLoggable("NotifManCompat", 3)) {
      new StringBuilder("Disconnected from service ").append(paramComponentName);
    }
    c.obtainMessage(2, paramComponentName).sendToTarget();
  }
}

/* Location:
 * Qualified Name:     eb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */