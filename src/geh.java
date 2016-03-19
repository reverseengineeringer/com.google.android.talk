import android.content.ContentProviderClient;
import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.location.internal.LocationRequestUpdateData;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public final class geh
{
  private final gen<geb> a;
  private final Context b;
  private ContentProviderClient c = null;
  private boolean d = false;
  private Map<Object, gei> e = new HashMap();
  private Map<Object, gex> f = new HashMap();
  
  public geh(Context paramContext, gen<geb> paramgen)
  {
    b = paramContext;
    a = paramgen;
  }
  
  public void a()
  {
    Object localObject2;
    try
    {
      synchronized (e)
      {
        Iterator localIterator1 = e.values().iterator();
        while (localIterator1.hasNext())
        {
          localObject2 = (gei)localIterator1.next();
          if (localObject2 != null) {
            ((geb)a.a()).a(new LocationRequestUpdateData(1, 2, null, ((gez)localObject2).asBinder(), null, null));
          }
        }
      }
      e.clear();
    }
    catch (RemoteException localRemoteException)
    {
      throw new IllegalStateException(localRemoteException);
    }
    Iterator localIterator2 = f.values().iterator();
    while (localIterator2.hasNext())
    {
      localObject2 = (gex)localIterator2.next();
      if (localObject2 != null) {
        ((geb)a.a()).a(new LocationRequestUpdateData(1, 2, null, null, null, ((gew)localObject2).asBinder()));
      }
    }
    f.clear();
  }
  
  public void b()
  {
    if (d) {}
    try
    {
      a.b();
      ((geb)a.a()).a(false);
      d = false;
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new IllegalStateException(localRemoteException);
    }
  }
}

/* Location:
 * Qualified Name:     geh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */