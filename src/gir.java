import android.os.Binder;
import android.os.Parcel;
import com.google.android.gms.maps.model.StreetViewPanoramaLocation;

public abstract class gir
  extends Binder
  implements giq
{
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
  {
    switch (paramInt1)
    {
    default: 
      return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    case 1598968902: 
      paramParcel2.writeString("com.google.android.gms.maps.internal.IOnStreetViewPanoramaChangeListener");
      return true;
    }
    paramParcel1.enforceInterface("com.google.android.gms.maps.internal.IOnStreetViewPanoramaChangeListener");
    if (paramParcel1.readInt() != 0) {
      gkx localgkx = StreetViewPanoramaLocation.CREATOR;
    }
    for (paramParcel1 = gkx.a(paramParcel1);; paramParcel1 = null)
    {
      a(paramParcel1);
      paramParcel2.writeNoException();
      return true;
    }
  }
}

/* Location:
 * Qualified Name:     gir
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */