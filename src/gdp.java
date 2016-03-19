import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.location.LocationAvailability;

public final class gdp
  implements Parcelable.Creator<LocationAvailability>
{
  public static LocationAvailability a(Parcel paramParcel)
  {
    int i = 1;
    int n = aal.a(paramParcel);
    int m = 0;
    int k = 1000;
    long l = 0L;
    int j = 1;
    while (paramParcel.dataPosition() < n)
    {
      int i1 = paramParcel.readInt();
      switch (0xFFFF & i1)
      {
      default: 
        aal.b(paramParcel, i1);
        break;
      case 1: 
        j = aal.e(paramParcel, i1);
        break;
      case 1000: 
        m = aal.e(paramParcel, i1);
        break;
      case 2: 
        i = aal.e(paramParcel, i1);
        break;
      case 3: 
        l = aal.f(paramParcel, i1);
        break;
      case 4: 
        k = aal.e(paramParcel, i1);
      }
    }
    if (paramParcel.dataPosition() != n) {
      throw new ax("Overread allowed size end=" + n, paramParcel);
    }
    return new LocationAvailability(m, k, j, i, l);
  }
}

/* Location:
 * Qualified Name:     gdp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */