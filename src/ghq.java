import android.os.Binder;
import android.os.Parcel;

public abstract class ghq
  extends Binder
  implements ghp
{
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
  {
    switch (paramInt1)
    {
    default: 
      return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    case 1598968902: 
      paramParcel2.writeString("com.google.android.gms.maps.internal.IOnMapLoadedCallback");
      return true;
    }
    paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IOnMapLoadedCallback");
    a();
    paramParcel2.writeNoException();
    return true;
  }
}

/* Location:
 * Qualified Name:     ghq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */