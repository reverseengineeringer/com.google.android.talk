import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.people.identity.internal.ParcelableListOptions;

public final class gnm
  implements Parcelable.Creator<ParcelableListOptions>
{
  public static ParcelableListOptions a(Parcel paramParcel)
  {
    Bundle localBundle = null;
    boolean bool1 = false;
    int j = aal.a(paramParcel);
    String str = null;
    boolean bool2 = false;
    boolean bool3 = false;
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
        bool3 = aal.c(paramParcel, k);
        break;
      case 1000: 
        i = aal.e(paramParcel, k);
        break;
      case 2: 
        bool2 = aal.c(paramParcel, k);
        break;
      case 3: 
        str = aal.i(paramParcel, k);
        break;
      case 4: 
        bool1 = aal.c(paramParcel, k);
        break;
      case 5: 
        localBundle = aal.k(paramParcel, k);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new ax("Overread allowed size end=" + j, paramParcel);
    }
    return new ParcelableListOptions(i, bool3, bool2, bool1, str, localBundle);
  }
}

/* Location:
 * Qualified Name:     gnm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */