import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public final class blh
  extends bkq
  implements Parcelable
{
  public static final Parcelable.Creator<blh> CREATOR = new bli();
  public String e;
  public String f;
  public String g;
  
  public blh() {}
  
  blh(Parcel paramParcel)
  {
    super.b(paramParcel);
    e = paramParcel.readString();
    f = paramParcel.readString();
    g = paramParcel.readString();
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
    paramParcel.writeString(g);
  }
}

/* Location:
 * Qualified Name:     blh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */