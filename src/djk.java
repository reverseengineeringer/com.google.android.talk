import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.apps.hangouts.phone.SmsAccountPickerActivity;

public final class djk
  implements hzq
{
  public static final Parcelable.Creator<SmsAccountPickerActivity> CREATOR = new djl();
  
  public boolean a(hqb paramhqb)
  {
    return (paramhqb.d("logged_in")) || (paramhqb.d("sms_only"));
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {}
}

/* Location:
 * Qualified Name:     djk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */