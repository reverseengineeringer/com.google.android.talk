import android.os.Binder;
import android.os.IBinder;
import android.os.Parcel;

public abstract class ffy
  extends Binder
  implements ffx
{
  public ffy()
  {
    attachInterface(this, "com.google.android.apps.tycho.IProxyNumberCallback");
  }
  
  public IBinder asBinder()
  {
    return this;
  }
  
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
  {
    switch (paramInt1)
    {
    default: 
      return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    case 1598968902: 
      paramParcel2.writeString("com.google.android.apps.tycho.IProxyNumberCallback");
      return true;
    case 1: 
      paramParcel1.enforceInterface("com.google.android.apps.tycho.IProxyNumberCallback");
      a(paramParcel1.readString(), paramParcel1.readString());
      paramParcel2.writeNoException();
      return true;
    }
    paramParcel1.enforceInterface("com.google.android.apps.tycho.IProxyNumberCallback");
    a(paramParcel1.readInt());
    paramParcel2.writeNoException();
    return true;
  }
}

/* Location:
 * Qualified Name:     ffy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */