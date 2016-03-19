import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public final class blj
  extends bkq
  implements Parcelable
{
  public static final Parcelable.Creator<blj> CREATOR = new blk();
  public String e;
  public String f;
  
  public blj() {}
  
  blj(Parcel paramParcel)
  {
    super.b(paramParcel);
    e = paramParcel.readString();
    f = paramParcel.readString();
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.a(paramParcel);
    paramParcel.writeString(e);
    paramParcel.writeString(f);
  }
}

/* Location:
 * Qualified Name:     blj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */