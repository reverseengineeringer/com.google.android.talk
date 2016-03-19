import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class ecu
  extends dyx
  implements Parcelable, bcn
{
  public static final Parcelable.Creator<ecu> CREATOR = new ecv();
  private final String a;
  
  protected ecu(Parcel paramParcel)
  {
    super(paramParcel);
    a = paramParcel.readString();
  }
  
  public ecu(bfd parambfd, String paramString)
  {
    super(parambfd);
    a = aal.y(paramString);
  }
  
  public int a(Context paramContext, bcg parambcg)
  {
    return a(parambcg);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void p_()
  {
    a(new dpw(a));
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.a(paramParcel, paramInt);
    paramParcel.writeString(a);
  }
}

/* Location:
 * Qualified Name:     ecu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */