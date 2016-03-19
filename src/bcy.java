import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import java.util.Iterator;
import java.util.List;

final class bcy
  implements ServiceConnection
{
  bcy(bcx parambcx) {}
  
  public void onServiceConnected(ComponentName arg1, IBinder paramIBinder)
  {
    aal.w();
    a.a = ((bdl)paramIBinder).a();
    synchronized (a)
    {
      if (a.b == null) {
        break label108;
      }
      a.b.size();
      paramIBinder = a.b.iterator();
      if (paramIBinder.hasNext())
      {
        bcp localbcp = (bcp)paramIBinder.next();
        a.a.a(localbcp);
      }
    }
    a.b = null;
    label108:
  }
  
  public void onServiceDisconnected(ComponentName paramComponentName)
  {
    aal.w();
    a.a = null;
  }
}

/* Location:
 * Qualified Name:     bcy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */