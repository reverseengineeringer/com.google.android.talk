import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.maps.model.CircleOptions;
import com.google.android.gms.maps.model.LatLng;

public final class gkn
  implements Parcelable.Creator<CircleOptions>
{
  public static CircleOptions a(Parcel paramParcel)
  {
    float f1 = 0.0F;
    boolean bool = false;
    int m = aal.a(paramParcel);
    LatLng localLatLng = null;
    double d = 0.0D;
    int i = 0;
    int j = 0;
    float f2 = 0.0F;
    int k = 0;
    while (paramParcel.dataPosition() < m)
    {
      int n = paramParcel.readInt();
      switch (0xFFFF & n)
      {
      default: 
        aal.b(paramParcel, n);
        break;
      case 1: 
        k = aal.e(paramParcel, n);
        break;
      case 2: 
        localLatLng = (LatLng)aal.a(paramParcel, n, LatLng.CREATOR);
        break;
      case 3: 
        d = aal.h(paramParcel, n);
        break;
      case 4: 
        f2 = aal.g(paramParcel, n);
        break;
      case 5: 
        j = aal.e(paramParcel, n);
        break;
      case 6: 
        i = aal.e(paramParcel, n);
        break;
      case 7: 
        f1 = aal.g(paramParcel, n);
        break;
      case 8: 
        bool = aal.c(paramParcel, n);
      }
    }
    if (paramParcel.dataPosition() != m) {
      throw new ax("Overread allowed size end=" + m, paramParcel);
    }
    return new CircleOptions(k, localLatLng, d, f2, j, i, f1, bool);
  }
}

/* Location:
 * Qualified Name:     gkn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */