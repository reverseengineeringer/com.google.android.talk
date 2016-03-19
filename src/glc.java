import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.maps.GoogleMapOptions;
import com.google.android.gms.maps.model.CameraPosition;

public final class glc
  implements Parcelable.Creator<GoogleMapOptions>
{
  public static GoogleMapOptions a(Parcel paramParcel)
  {
    int k = aal.a(paramParcel);
    int j = 0;
    byte b10 = -1;
    byte b9 = -1;
    int i = 0;
    CameraPosition localCameraPosition = null;
    byte b8 = -1;
    byte b7 = -1;
    byte b6 = -1;
    byte b5 = -1;
    byte b4 = -1;
    byte b3 = -1;
    byte b2 = -1;
    byte b1 = -1;
    while (paramParcel.dataPosition() < k)
    {
      int m = paramParcel.readInt();
      switch (0xFFFF & m)
      {
      case 13: 
      default: 
        aal.b(paramParcel, m);
        break;
      case 1: 
        j = aal.e(paramParcel, m);
        break;
      case 2: 
        b10 = aal.d(paramParcel, m);
        break;
      case 3: 
        b9 = aal.d(paramParcel, m);
        break;
      case 4: 
        i = aal.e(paramParcel, m);
        break;
      case 5: 
        localCameraPosition = (CameraPosition)aal.a(paramParcel, m, CameraPosition.CREATOR);
        break;
      case 6: 
        b8 = aal.d(paramParcel, m);
        break;
      case 7: 
        b7 = aal.d(paramParcel, m);
        break;
      case 8: 
        b6 = aal.d(paramParcel, m);
        break;
      case 9: 
        b5 = aal.d(paramParcel, m);
        break;
      case 10: 
        b4 = aal.d(paramParcel, m);
        break;
      case 11: 
        b3 = aal.d(paramParcel, m);
        break;
      case 12: 
        b2 = aal.d(paramParcel, m);
        break;
      case 14: 
        b1 = aal.d(paramParcel, m);
      }
    }
    if (paramParcel.dataPosition() != k) {
      throw new ax("Overread allowed size end=" + k, paramParcel);
    }
    return new GoogleMapOptions(j, b10, b9, i, localCameraPosition, b8, b7, b6, b5, b4, b3, b2, b1);
  }
}

/* Location:
 * Qualified Name:     glc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */