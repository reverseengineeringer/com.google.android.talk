import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;

public class ecp
  extends dyx
  implements Parcelable, bcn
{
  public static final Parcelable.Creator<ecp> CREATOR = new ecq();
  private final long a;
  
  protected ecp(Parcel paramParcel)
  {
    super(paramParcel);
    a = paramParcel.readLong();
  }
  
  public ecp(bfd parambfd, long paramLong)
  {
    super(parambfd);
    a = paramLong;
  }
  
  public int a(Context paramContext, bcg parambcg)
  {
    super.a(parambcg);
    RealTimeChatService.a(b.b, a);
    return bco.a;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void p_()
  {
    a(new dpt(a));
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.a(paramParcel, paramInt);
    paramParcel.writeLong(a);
  }
}

/* Location:
 * Qualified Name:     ecp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */