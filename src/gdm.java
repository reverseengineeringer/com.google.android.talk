import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.location.ActivityRecognitionResult;
import com.google.android.gms.location.DetectedActivity;
import java.util.ArrayList;

public final class gdm
  implements Parcelable.Creator<ActivityRecognitionResult>
{
  public static ActivityRecognitionResult a(Parcel paramParcel)
  {
    long l1 = 0L;
    int i = 0;
    int k = aal.a(paramParcel);
    ArrayList localArrayList = null;
    long l2 = 0L;
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
        localArrayList = aal.c(paramParcel, m, DetectedActivity.CREATOR);
        break;
      case 1000: 
        j = aal.e(paramParcel, m);
        break;
      case 2: 
        l2 = aal.f(paramParcel, m);
        break;
      case 3: 
        l1 = aal.f(paramParcel, m);
        break;
      case 4: 
        i = aal.e(paramParcel, m);
      }
    }
    if (paramParcel.dataPosition() != k) {
      throw new ax("Overread allowed size end=" + k, paramParcel);
    }
    return new ActivityRecognitionResult(j, localArrayList, l2, l1, i);
  }
}

/* Location:
 * Qualified Name:     gdm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */