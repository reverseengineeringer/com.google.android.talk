import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.people.model.AvatarReference;

public final class gpv
  implements Parcelable.Creator<AvatarReference>
{
  public static AvatarReference a(Parcel paramParcel)
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
        j = aal.e(paramParcel, m);
        break;
      case 1000: 
        i = aal.e(paramParcel, m);
        break;
      case 2: 
        str = aal.i(paramParcel, m);
      }
    }
    if (paramParcel.dataPosition() != k) {
      throw new ax("Overread allowed size end=" + k, paramParcel);
    }
    return new AvatarReference(i, j, str);
  }
}

/* Location:
 * Qualified Name:     gpv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */