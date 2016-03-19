import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.maps.model.StreetViewPanoramaOrientation;

public final class gky
  implements Parcelable.Creator<StreetViewPanoramaOrientation>
{
  public static StreetViewPanoramaOrientation a(Parcel paramParcel)
  {
    float f2 = 0.0F;
    int j = aal.a(paramParcel);
    int i = 0;
    float f1 = 0.0F;
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
        f1 = aal.g(paramParcel, k);
        break;
      case 3: 
        f2 = aal.g(paramParcel, k);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new ax("Overread allowed size end=" + j, paramParcel);
    }
    return new StreetViewPanoramaOrientation(i, f1, f2);
  }
}

/* Location:
 * Qualified Name:     gky
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */