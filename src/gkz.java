import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.maps.model.Tile;

public final class gkz
  implements Parcelable.Creator<Tile>
{
  public static Tile a(Parcel paramParcel)
  {
    int k = 0;
    int m = aal.a(paramParcel);
    byte[] arrayOfByte = null;
    int j = 0;
    int i = 0;
    while (paramParcel.dataPosition() < m)
    {
      int n = paramParcel.readInt();
      switch (0xFFFF & n)
      {
      default: 
        aal.b(paramParcel, n);
        break;
      case 1: 
        i = aal.e(paramParcel, n);
        break;
      case 2: 
        j = aal.e(paramParcel, n);
        break;
      case 3: 
        k = aal.e(paramParcel, n);
        break;
      case 4: 
        arrayOfByte = aal.l(paramParcel, n);
      }
    }
    if (paramParcel.dataPosition() != m) {
      throw new ax("Overread allowed size end=" + m, paramParcel);
    }
    return new Tile(i, j, k, arrayOfByte);
  }
}

/* Location:
 * Qualified Name:     gkz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */