import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.internal.ClientIdentity;
import com.google.android.gms.location.internal.LocationRequestInternal;
import java.util.List;

public final class gek
  implements Parcelable.Creator<LocationRequestInternal>
{
  public static LocationRequestInternal a(Parcel paramParcel)
  {
    String str = null;
    boolean bool2 = true;
    boolean bool1 = false;
    int j = aal.a(paramParcel);
    Object localObject = LocationRequestInternal.a;
    boolean bool3 = true;
    boolean bool4 = false;
    LocationRequest localLocationRequest = null;
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
        localLocationRequest = (LocationRequest)aal.a(paramParcel, k, LocationRequest.CREATOR);
        break;
      case 1000: 
        i = aal.e(paramParcel, k);
        break;
      case 2: 
        bool4 = aal.c(paramParcel, k);
        break;
      case 3: 
        bool3 = aal.c(paramParcel, k);
        break;
      case 4: 
        bool2 = aal.c(paramParcel, k);
        break;
      case 5: 
        localObject = aal.c(paramParcel, k, ClientIdentity.CREATOR);
        break;
      case 6: 
        str = aal.i(paramParcel, k);
        break;
      case 7: 
        bool1 = aal.c(paramParcel, k);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new ax("Overread allowed size end=" + j, paramParcel);
    }
    return new LocationRequestInternal(i, localLocationRequest, bool4, bool3, bool2, (List)localObject, str, bool1);
  }
}

/* Location:
 * Qualified Name:     gek
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */