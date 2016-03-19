import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.location.LocationRequest;

public final class gdq
  implements Parcelable.Creator<LocationRequest>
{
  public static LocationRequest a(Parcel paramParcel)
  {
    int m = aal.a(paramParcel);
    int k = 0;
    int j = 102;
    long l4 = 3600000L;
    long l3 = 600000L;
    boolean bool = false;
    long l2 = Long.MAX_VALUE;
    int i = Integer.MAX_VALUE;
    float f = 0.0F;
    long l1 = 0L;
    while (paramParcel.dataPosition() < m)
    {
      int n = paramParcel.readInt();
      switch (0xFFFF & n)
      {
      default: 
        aal.b(paramParcel, n);
        break;
      case 1: 
        j = aal.e(paramParcel, n);
        break;
      case 1000: 
        k = aal.e(paramParcel, n);
        break;
      case 2: 
        l4 = aal.f(paramParcel, n);
        break;
      case 3: 
        l3 = aal.f(paramParcel, n);
        break;
      case 4: 
        bool = aal.c(paramParcel, n);
        break;
      case 5: 
        l2 = aal.f(paramParcel, n);
        break;
      case 6: 
        i = aal.e(paramParcel, n);
        break;
      case 7: 
        f = aal.g(paramParcel, n);
        break;
      case 8: 
        l1 = aal.f(paramParcel, n);
      }
    }
    if (paramParcel.dataPosition() != m) {
      throw new ax("Overread allowed size end=" + m, paramParcel);
    }
    return new LocationRequest(k, j, l4, l3, bool, l2, i, f, l1);
  }
}

/* Location:
 * Qualified Name:     gdq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */