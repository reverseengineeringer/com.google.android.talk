import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.MarkerOptions;

public final class gkr
  implements Parcelable.Creator<MarkerOptions>
{
  public static MarkerOptions a(Parcel paramParcel)
  {
    int j = aal.a(paramParcel);
    int i = 0;
    LatLng localLatLng = null;
    String str2 = null;
    String str1 = null;
    IBinder localIBinder = null;
    float f6 = 0.0F;
    float f5 = 0.0F;
    boolean bool3 = false;
    boolean bool2 = false;
    boolean bool1 = false;
    float f4 = 0.0F;
    float f3 = 0.5F;
    float f2 = 0.0F;
    float f1 = 1.0F;
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
        str2 = aal.i(paramParcel, k);
        break;
      case 4: 
        str1 = aal.i(paramParcel, k);
        break;
      case 5: 
        localIBinder = aal.j(paramParcel, k);
        break;
      case 6: 
        f6 = aal.g(paramParcel, k);
        break;
      case 7: 
        f5 = aal.g(paramParcel, k);
        break;
      case 8: 
        bool3 = aal.c(paramParcel, k);
        break;
      case 9: 
        bool2 = aal.c(paramParcel, k);
        break;
      case 10: 
        bool1 = aal.c(paramParcel, k);
        break;
      case 11: 
        f4 = aal.g(paramParcel, k);
        break;
      case 12: 
        f3 = aal.g(paramParcel, k);
        break;
      case 13: 
        f2 = aal.g(paramParcel, k);
        break;
      case 14: 
        f1 = aal.g(paramParcel, k);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new ax("Overread allowed size end=" + j, paramParcel);
    }
    return new MarkerOptions(i, localLatLng, str2, str1, localIBinder, f6, f5, bool3, bool2, bool1, f4, f3, f2, f1);
  }
}

/* Location:
 * Qualified Name:     gkr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */