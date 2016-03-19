import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.PolylineOptions;
import java.util.ArrayList;

public final class gku
  implements Parcelable.Creator<PolylineOptions>
{
  public static PolylineOptions a(Parcel paramParcel)
  {
    float f1 = 0.0F;
    boolean bool1 = false;
    int k = aal.a(paramParcel);
    ArrayList localArrayList = null;
    boolean bool2 = false;
    int i = 0;
    float f2 = 0.0F;
    int j = 0;
    while (paramParcel.dataPosition() < k)
    {
      int m = paramParcel.readInt();
      switch (0xFFFF & m)
      {
      default: 
        aal.b(paramParcel, m);
        break;
      case 1: 
        j = aal.e(paramParcel, m);
        break;
      case 2: 
        localArrayList = aal.c(paramParcel, m, LatLng.CREATOR);
        break;
      case 3: 
        f2 = aal.g(paramParcel, m);
        break;
      case 4: 
        i = aal.e(paramParcel, m);
        break;
      case 5: 
        f1 = aal.g(paramParcel, m);
        break;
      case 6: 
        bool2 = aal.c(paramParcel, m);
        break;
      case 7: 
        bool1 = aal.c(paramParcel, m);
      }
    }
    if (paramParcel.dataPosition() != k) {
      throw new ax("Overread allowed size end=" + k, paramParcel);
    }
    return new PolylineOptions(j, localArrayList, f2, i, f1, bool2, bool1);
  }
}

/* Location:
 * Qualified Name:     gku
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */