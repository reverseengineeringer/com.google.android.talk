import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;

public final class flj
  extends fld
{
  public final IBinder e;
  
  public flj(flc paramflc, int paramInt, IBinder paramIBinder, Bundle paramBundle)
  {
    super(paramflc, paramInt, paramBundle);
    e = paramIBinder;
  }
  
  protected void a(ConnectionResult paramConnectionResult)
  {
    if (flc.e(f) != null) {
      flc.e(f).a(paramConnectionResult);
    }
    f.g();
  }
  
  protected boolean a()
  {
    try
    {
      Object localObject = e.getInterfaceDescriptor();
      if (!f.b().equals(localObject)) {
        Log.e("GmsClient", "service descriptor mismatch: " + f.b() + " vs. " + (String)localObject);
      }
      do
      {
        return false;
        localObject = f.a(e);
      } while ((localObject == null) || (!flc.a(f, 2, 3, (IInterface)localObject)));
      f.l();
      if (flc.b(f) != null) {
        flc.b(f).a_(null);
      }
      return true;
    }
    catch (RemoteException localRemoteException) {}
    return false;
  }
}

/* Location:
 * Qualified Name:     flj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */