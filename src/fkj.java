import android.database.CursorWindow;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.data.DataHolder;

public final class fkj
  implements Parcelable.Creator<DataHolder>
{
  public static DataHolder a(Parcel paramParcel)
  {
    int i = 0;
    Bundle localBundle = null;
    int k = aal.a(paramParcel);
    CursorWindow[] arrayOfCursorWindow = null;
    String[] arrayOfString = null;
    int j = 0;
    while (paramParcel.dataPosition() < k)
    {
      int m = paramParcel.readInt();
      switch (0xFFFF & m)
      {
      default: 
        aal.b(paramParcel, m);
        break;
      case 1: 
        arrayOfString = aal.m(paramParcel, m);
        break;
      case 1000: 
        j = aal.e(paramParcel, m);
        break;
      case 2: 
        arrayOfCursorWindow = (CursorWindow[])aal.b(paramParcel, m, CursorWindow.CREATOR);
        break;
      case 3: 
        i = aal.e(paramParcel, m);
        break;
      case 4: 
        localBundle = aal.k(paramParcel, m);
      }
    }
    if (paramParcel.dataPosition() != k) {
      throw new ax("Overread allowed size end=" + k, paramParcel);
    }
    paramParcel = new DataHolder(j, arrayOfString, arrayOfCursorWindow, i, localBundle);
    paramParcel.a();
    return paramParcel;
  }
}

/* Location:
 * Qualified Name:     fkj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */