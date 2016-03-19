import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public final class dvb
  implements Parcelable
{
  public static final Parcelable.Creator<dvb> CREATOR = new dvc();
  public final int a;
  public final bfd b;
  public final dvm c;
  
  protected dvb(Parcel paramParcel)
  {
    b = dvd.a(paramParcel.readString(), paramParcel.readString());
    a = b.g();
    c = dvd.e(b);
  }
  
  public dvb(bfd parambfd)
  {
    a = parambfd.g();
    c = dvd.e(parambfd);
    b = parambfd;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(b.a());
    paramParcel.writeString(b.U());
  }
}

/* Location:
 * Qualified Name:     dvb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */