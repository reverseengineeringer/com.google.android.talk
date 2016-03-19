import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.maps.StreetViewPanoramaOptions;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.StreetViewPanoramaCamera;

public final class gld
  implements Parcelable.Creator<StreetViewPanoramaOptions>
{
  public static StreetViewPanoramaOptions a(Parcel paramParcel)
  {
    byte b1 = 0;
    int j = aal.a(paramParcel);
    byte b2 = 0;
    byte b3 = 0;
    byte b4 = 0;
    byte b5 = 0;
    Integer localInteger = null;
    LatLng localLatLng = null;
    String str = null;
    StreetViewPanoramaCamera localStreetViewPanoramaCamera = null;
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
        localStreetViewPanoramaCamera = (StreetViewPanoramaCamera)aal.a(paramParcel, k, StreetViewPanoramaCamera.CREATOR);
        break;
      case 3: 
        str = aal.i(paramParcel, k);
        break;
      case 4: 
        localLatLng = (LatLng)aal.a(paramParcel, k, LatLng.CREATOR);
        break;
      case 5: 
        k = aal.a(paramParcel, k);
        if (k == 0)
        {
          localInteger = null;
        }
        else
        {
          if (k != 4) {
            throw new ax("Expected size 4" + " got " + k + " (0x" + Integer.toHexString(k) + ")", paramParcel);
          }
          localInteger = Integer.valueOf(paramParcel.readInt());
        }
        break;
      case 6: 
        b5 = aal.d(paramParcel, k);
        break;
      case 7: 
        b4 = aal.d(paramParcel, k);
        break;
      case 8: 
        b3 = aal.d(paramParcel, k);
        break;
      case 9: 
        b2 = aal.d(paramParcel, k);
        break;
      case 10: 
        b1 = aal.d(paramParcel, k);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new ax("Overread allowed size end=" + j, paramParcel);
    }
    return new StreetViewPanoramaOptions(i, localStreetViewPanoramaCamera, str, localLatLng, localInteger, b5, b4, b3, b2, b1);
  }
}

/* Location:
 * Qualified Name:     gld
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */