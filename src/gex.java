import android.os.Binder;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.util.Log;
import com.google.android.gms.location.LocationAvailability;
import com.google.android.gms.location.LocationResult;

public class gex
  extends Binder
  implements gew
{
  public Handler a;
  
  public void a(int paramInt, Object paramObject)
  {
    if (a == null)
    {
      Log.e("LocationClientHelper", "Received a data in client after calling removeLocationUpdates.");
      return;
    }
    Message localMessage = Message.obtain();
    what = paramInt;
    obj = paramObject;
    a.sendMessage(localMessage);
  }
  
  public void a(LocationAvailability paramLocationAvailability)
  {
    a(1, paramLocationAvailability);
  }
  
  public void a(LocationResult paramLocationResult)
  {
    a(0, paramLocationResult);
  }
  
  public IBinder asBinder()
  {
    return this;
  }
  
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
  {
    Object localObject2 = null;
    Object localObject1 = null;
    switch (paramInt1)
    {
    default: 
      return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    case 1598968902: 
      paramParcel2.writeString("com.google.android.gms.location.ILocationCallback");
      return true;
    case 1: 
      paramParcel1.enforceInterface("com.google.android.gms.location.ILocationCallback");
      paramParcel2 = (Parcel)localObject1;
      if (paramParcel1.readInt() != 0) {
        paramParcel2 = (LocationResult)LocationResult.CREATOR.createFromParcel(paramParcel1);
      }
      a(paramParcel2);
      return true;
    }
    paramParcel1.enforceInterface("com.google.android.gms.location.ILocationCallback");
    paramParcel2 = (Parcel)localObject2;
    if (paramParcel1.readInt() != 0)
    {
      paramParcel2 = LocationAvailability.CREATOR;
      paramParcel2 = gdp.a(paramParcel1);
    }
    a(paramParcel2);
    return true;
  }
}

/* Location:
 * Qualified Name:     gex
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */