import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.clearcut.LogEventParcelable;
import com.google.android.gms.playlog.internal.PlayLoggerContext;

public final class fgw
  implements Parcelable.Creator<LogEventParcelable>
{
  public static LogEventParcelable a(Parcel paramParcel)
  {
    int j = aal.a(paramParcel);
    int[] arrayOfInt = null;
    byte[] arrayOfByte = null;
    PlayLoggerContext localPlayLoggerContext = null;
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
        localPlayLoggerContext = (PlayLoggerContext)aal.a(paramParcel, k, PlayLoggerContext.CREATOR);
        break;
      case 3: 
        arrayOfByte = aal.l(paramParcel, k);
        break;
      case 4: 
        k = aal.a(paramParcel, k);
        int m = paramParcel.dataPosition();
        if (k == 0) {
          arrayOfInt = null;
        }
        for (;;)
        {
          break;
          arrayOfInt = paramParcel.createIntArray();
          paramParcel.setDataPosition(k + m);
        }
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new ax("Overread allowed size end=" + j, paramParcel);
    }
    return new LogEventParcelable(i, localPlayLoggerContext, arrayOfByte, arrayOfInt);
  }
}

/* Location:
 * Qualified Name:     fgw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */