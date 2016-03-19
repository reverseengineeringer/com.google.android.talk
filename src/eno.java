import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public final class eno
  implements Parcelable
{
  public static final Parcelable.Creator<eno> CREATOR = new enp();
  public String a;
  public String b;
  public int c;
  public int d;
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(a);
    paramParcel.writeString(b);
    paramParcel.writeInt(c);
    paramParcel.writeInt(d);
  }
}

/* Location:
 * Qualified Name:     eno
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */