import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public final class blb
  extends bkq
  implements Parcelable
{
  public static final Parcelable.Creator<blb> CREATOR = new blc();
  public int e;
  public int f;
  public int g;
  public int h;
  public long i;
  
  public blb() {}
  
  blb(Parcel paramParcel)
  {
    super.b(paramParcel);
    e = paramParcel.readInt();
    f = paramParcel.readInt();
    g = paramParcel.readInt();
    h = paramParcel.readInt();
    i = paramParcel.readLong();
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.a(paramParcel);
    paramParcel.writeInt(e);
    paramParcel.writeInt(f);
    paramParcel.writeInt(g);
    paramParcel.writeInt(h);
    paramParcel.writeLong(i);
  }
}

/* Location:
 * Qualified Name:     blb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */