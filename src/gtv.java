import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.wearable.internal.AddListenerRequest;
import com.google.android.gms.wearable.internal.RemoveListenerRequest;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

final class gtv<T>
{
  private final Map<T, gup<T>> a = new HashMap();
  
  public void a(IBinder paramIBinder)
  {
    synchronized (a)
    {
      paramIBinder = gtt.a(paramIBinder);
      guk localguk = new guk();
      Iterator localIterator = a.entrySet().iterator();
      for (;;)
      {
        if (localIterator.hasNext())
        {
          Map.Entry localEntry = (Map.Entry)localIterator.next();
          gup localgup = (gup)localEntry.getValue();
          try
          {
            paramIBinder.a(localguk, new AddListenerRequest(localgup));
            if (Log.isLoggable("WearableClient", 2)) {
              new StringBuilder("onPostInitHandler: added: ").append(localEntry.getKey()).append("/").append(localgup);
            }
          }
          catch (RemoteException localRemoteException)
          {
            new StringBuilder("onPostInitHandler: Didn't add: ").append(localEntry.getKey()).append("/").append(localgup);
          }
        }
      }
    }
  }
  
  public void a(gun paramgun)
  {
    synchronized (a)
    {
      guk localguk = new guk();
      Iterator localIterator = a.entrySet().iterator();
      for (;;)
      {
        if (localIterator.hasNext())
        {
          Map.Entry localEntry = (Map.Entry)localIterator.next();
          gup localgup = (gup)localEntry.getValue();
          if (localgup == null) {
            continue;
          }
          localgup.a();
          boolean bool = paramgun.d();
          if (!bool) {
            continue;
          }
          try
          {
            ((gts)paramgun.m()).a(localguk, new RemoveListenerRequest(localgup));
            if (Log.isLoggable("WearableClient", 2)) {
              new StringBuilder("disconnect: removed: ").append(localEntry.getKey()).append("/").append(localgup);
            }
          }
          catch (RemoteException localRemoteException)
          {
            new StringBuilder("disconnect: Didn't remove: ").append(localEntry.getKey()).append("/").append(localgup);
          }
        }
      }
    }
    a.clear();
  }
}

/* Location:
 * Qualified Name:     gtv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */