import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.maps.model.TileOverlayOptions;

public final class gla
  implements Parcelable.Creator<TileOverlayOptions>
{
  public static TileOverlayOptions a(Parcel paramParcel)
  {
    boolean bool2 = false;
    int j = aal.a(paramParcel);
    IBinder localIBinder = null;
    float f = 0.0F;
    boolean bool1 = true;
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
        i = aal.e(paramParcel, k);
        break;
      case 2: 
        localIBinder = aal.j(paramParcel, k);
        break;
      case 3: 
        bool2 = aal.c(paramParcel, k);
        break;
      case 4: 
        f = aal.g(paramParcel, k);
        break;
      case 5: 
        bool1 = aal.c(paramParcel, k);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new ax("Overread allowed size end=" + j, paramParcel);
    }
    return new TileOverlayOptions(i, localIBinder, bool2, f, bool1);
  }
}

/* Location:
 * Qualified Name:     gla
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */