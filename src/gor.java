import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.people.internal.ParcelableLoadImageOptions;

public final class gor
  implements Parcelable.Creator<ParcelableLoadImageOptions>
{
  public static ParcelableLoadImageOptions a(Parcel paramParcel)
  {
    boolean bool = false;
    int m = aal.a(paramParcel);
    int k = 0;
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
        j = aal.e(paramParcel, n);
        break;
      case 1000: 
        i = aal.e(paramParcel, n);
        break;
      case 2: 
        k = aal.e(paramParcel, n);
        break;
      case 3: 
        bool = aal.c(paramParcel, n);
      }
    }
    if (paramParcel.dataPosition() != m) {
      throw new ax("Overread allowed size end=" + m, paramParcel);
    }
    return new ParcelableLoadImageOptions(i, j, k, bool);
  }
}

/* Location:
 * Qualified Name:     gor
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */