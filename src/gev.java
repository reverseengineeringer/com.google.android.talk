import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.location.GestureRequest;
import java.util.ArrayList;

public final class gev
  implements Parcelable.Creator<GestureRequest>
{
  public static GestureRequest a(Parcel paramParcel)
  {
    int j = aal.a(paramParcel);
    int i = 0;
    ArrayList localArrayList = null;
    while (paramParcel.dataPosition() < j)
    {
      int k = paramParcel.readInt();
      switch (0xFFFF & k)
      {
      default: 
        aal.b(paramParcel, k);
        break;
      case 1: 
        localArrayList = aal.n(paramParcel, k);
        break;
      case 1000: 
        i = aal.e(paramParcel, k);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new ax("Overread allowed size end=" + j, paramParcel);
    }
    return new GestureRequest(i, localArrayList);
  }
}

/* Location:
 * Qualified Name:     gev
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */