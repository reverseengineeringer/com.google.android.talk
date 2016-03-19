import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.maps.model.GroundOverlayOptions;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.LatLngBounds;

public final class gko
  implements Parcelable.Creator<GroundOverlayOptions>
{
  public static GroundOverlayOptions a(Parcel paramParcel)
  {
    boolean bool = false;
    LatLngBounds localLatLngBounds = null;
    float f1 = 0.0F;
    int j = aal.a(paramParcel);
    float f2 = 0.0F;
    float f3 = 0.0F;
    float f4 = 0.0F;
    float f5 = 0.0F;
    float f6 = 0.0F;
    float f7 = 0.0F;
    LatLng localLatLng = null;
    IBinder localIBinder = null;
    int i = 0;
    while (paramParcel.dataPosition() < j)
    {
      int k = paramParcel.readInt();
      switch (0xFFFF & k)
      {
      default: 
        aal.b(paramParcel, k);
        break;
      case 1: 
        i = aal.e(paramParcel, k);
        break;
      case 2: 
        localIBinder = aal.j(paramParcel, k);
        break;
      case 3: 
        localLatLng = (LatLng)aal.a(paramParcel, k, LatLng.CREATOR);
        break;
      case 4: 
        f7 = aal.g(paramParcel, k);
        break;
      case 5: 
        f6 = aal.g(paramParcel, k);
        break;
      case 6: 
        localLatLngBounds = (LatLngBounds)aal.a(paramParcel, k, LatLngBounds.CREATOR);
        break;
      case 7: 
        f5 = aal.g(paramParcel, k);
        break;
      case 8: 
        f4 = aal.g(paramParcel, k);
        break;
      case 9: 
        bool = aal.c(paramParcel, k);
        break;
      case 10: 
        f3 = aal.g(paramParcel, k);
        break;
      case 11: 
        f2 = aal.g(paramParcel, k);
        break;
      case 12: 
        f1 = aal.g(paramParcel, k);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new ax("Overread allowed size end=" + j, paramParcel);
    }
    return new GroundOverlayOptions(i, localIBinder, localLatLng, f7, f6, localLatLngBounds, f5, f4, bool, f3, f2, f1);
  }
}

/* Location:
 * Qualified Name:     gko
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */