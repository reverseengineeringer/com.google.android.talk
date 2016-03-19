import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.model.LatLng;

public final class gkm
  implements Parcelable.Creator<CameraPosition>
{
  public static CameraPosition a(Parcel paramParcel)
  {
    float f1 = 0.0F;
    int j = aal.a(paramParcel);
    int i = 0;
    LatLng localLatLng = null;
    float f2 = 0.0F;
    float f3 = 0.0F;
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
        localLatLng = (LatLng)aal.a(paramParcel, k, LatLng.CREATOR);
        break;
      case 3: 
        f3 = aal.g(paramParcel, k);
        break;
      case 4: 
        f2 = aal.g(paramParcel, k);
        break;
      case 5: 
        f1 = aal.g(paramParcel, k);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new ax("Overread allowed size end=" + j, paramParcel);
    }
    return new CameraPosition(i, localLatLng, f3, f2, f1);
  }
}

/* Location:
 * Qualified Name:     gkm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */