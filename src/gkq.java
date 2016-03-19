import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.maps.model.LatLng;

public final class gkq
  implements Parcelable.Creator<LatLng>
{
  public static LatLng a(Parcel paramParcel)
  {
    double d1 = 0.0D;
    int j = aal.a(paramParcel);
    int i = 0;
    double d2 = 0.0D;
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
        d2 = aal.h(paramParcel, k);
        break;
      case 3: 
        d1 = aal.h(paramParcel, k);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new ax("Overread allowed size end=" + j, paramParcel);
    }
    return new LatLng(i, d2, d1);
  }
}

/* Location:
 * Qualified Name:     gkq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */