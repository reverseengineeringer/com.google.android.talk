import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.apps.hangouts.phone.AccountSelectionActivity;

public final class ddb
  implements hzq
{
  public static final Parcelable.Creator<AccountSelectionActivity> CREATOR = new ddc();
  
  public boolean a(hqb paramhqb)
  {
    boolean bool1 = false;
    dvi localdvi = dvd.d;
    boolean bool2 = dvi.a();
    int i;
    if ((bool2) && (paramhqb.d("sms_only")))
    {
      i = 1;
      if ((!bool2) || (!paramhqb.d("is_sms_account"))) {
        break label79;
      }
    }
    label79:
    for (int j = 1;; j = 0)
    {
      if ((paramhqb.d("is_gv_sms_integration_enabled")) || (i != 0) || (j != 0)) {
        bool1 = true;
      }
      return bool1;
      i = 0;
      break;
    }
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt) {}
}

/* Location:
 * Qualified Name:     ddb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */