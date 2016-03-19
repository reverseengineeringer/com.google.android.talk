import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.server.FavaDiagnosticsEntity;

public final class fmk
  implements Parcelable.Creator<FavaDiagnosticsEntity>
{
  public static FavaDiagnosticsEntity a(Parcel paramParcel)
  {
    int j = 0;
    int k = aal.a(paramParcel);
    String str = null;
    int i = 0;
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
      case 2: 
        str = aal.i(paramParcel, m);
        break;
      case 3: 
        j = aal.e(paramParcel, m);
      }
    }
    if (paramParcel.dataPosition() != k) {
      throw new ax("Overread allowed size end=" + k, paramParcel);
    }
    return new FavaDiagnosticsEntity(i, str, j);
  }
}

/* Location:
 * Qualified Name:     fmk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */