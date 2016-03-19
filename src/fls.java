import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import java.util.Iterator;
import java.util.Set;

public final class fls
  implements ServiceConnection
{
  public fls(flr paramflr) {}
  
  public void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    synchronized (flp.a(a.f))
    {
      a.c = paramIBinder;
      a.e = paramComponentName;
      Iterator localIterator = a.a.iterator();
      if (localIterator.hasNext()) {
        ((ServiceConnection)localIterator.next()).onServiceConnected(paramComponentName, paramIBinder);
      }
    }
    a.b = 1;
  }
  
  public void onServiceDisconnected(ComponentName paramComponentName)
  {
    synchronized (flp.a(a.f))
    {
      a.c = null;
      a.e = paramComponentName;
      Iterator localIterator = a.a.iterator();
      if (localIterator.hasNext()) {
        ((ServiceConnection)localIterator.next()).onServiceDisconnected(paramComponentName);
      }
    }
    a.b = 2;
  }
}

/* Location:
 * Qualified Name:     fls
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */