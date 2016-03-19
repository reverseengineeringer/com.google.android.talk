import android.app.PendingIntent;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.location.internal.LocationRequestInternal;
import com.google.android.gms.location.internal.LocationRequestUpdateData;

public final class gel
  implements Parcelable.Creator<LocationRequestUpdateData>
{
  public static LocationRequestUpdateData a(Parcel paramParcel)
  {
    IBinder localIBinder1 = null;
    int k = aal.a(paramParcel);
    int j = 0;
    int i = 1;
    PendingIntent localPendingIntent = null;
    IBinder localIBinder2 = null;
    LocationRequestInternal localLocationRequestInternal = null;
    while (paramParcel.dataPosition() < k)
    {
      int m = paramParcel.readInt();
      switch (0xFFFF & m)
      {
      default: 
        aal.b(paramParcel, m);
        break;
      case 1: 
        i = aal.e(paramParcel, m);
        break;
      case 1000: 
        j = aal.e(paramParcel, m);
        break;
      case 2: 
        localLocationRequestInternal = (LocationRequestInternal)aal.a(paramParcel, m, LocationRequestInternal.CREATOR);
        break;
      case 3: 
        localIBinder2 = aal.j(paramParcel, m);
        break;
      case 4: 
        localPendingIntent = (PendingIntent)aal.a(paramParcel, m, PendingIntent.CREATOR);
        break;
      case 5: 
        localIBinder1 = aal.j(paramParcel, m);
      }
    }
    if (paramParcel.dataPosition() != k) {
      throw new ax("Overread allowed size end=" + k, paramParcel);
    }
    return new LocationRequestUpdateData(j, i, localLocationRequestInternal, localIBinder2, localPendingIntent, localIBinder1);
  }
}

/* Location:
 * Qualified Name:     gel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */