import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.people.identity.internal.AccountToken;

public final class gni
  implements Parcelable.Creator<AccountToken>
{
  public static AccountToken a(Parcel paramParcel)
  {
    String str2 = null;
    int j = aal.a(paramParcel);
    int i = 0;
    String str1 = null;
    while (paramParcel.dataPosition() < j)
    {
      int k = paramParcel.readInt();
      switch (0xFFFF & k)
      {
      default: 
        aal.b(paramParcel, k);
        break;
      case 1: 
        str1 = aal.i(paramParcel, k);
        break;
      case 1000: 
        i = aal.e(paramParcel, k);
        break;
      case 2: 
        str2 = aal.i(paramParcel, k);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new ax("Overread allowed size end=" + j, paramParcel);
    }
    return new AccountToken(i, str1, str2);
  }
}

/* Location:
 * Qualified Name:     gni
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */