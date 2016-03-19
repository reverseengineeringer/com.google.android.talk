import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.PointOfInterest;

public final class gks
  implements Parcelable.Creator<PointOfInterest>
{
  public static PointOfInterest a(Parcel paramParcel)
  {
    int j = aal.a(paramParcel);
    String str1 = null;
    LatLng localLatLng = null;
    int i = 0;
    String str2 = null;
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
        str1 = aal.i(paramParcel, k);
        break;
      case 4: 
        str2 = aal.i(paramParcel, k);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new ax("Overread allowed size end=" + j, paramParcel);
    }
    return new PointOfInterest(i, localLatLng, str1, str2);
  }
}

/* Location:
 * Qualified Name:     gks
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */