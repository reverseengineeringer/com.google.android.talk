import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

final class hue
  implements Parcelable
{
  public static final Parcelable.Creator<hue> CREATOR = new huf();
  public final int a;
  public final String b;
  public final hus c;
  
  public hue(int paramInt, String paramString, hus paramhus)
  {
    a = paramInt;
    b = paramString;
    c = paramhus;
  }
  
  hue(Parcel paramParcel)
  {
    a = paramParcel.readInt();
    b = paramParcel.readString();
    int i = paramParcel.readInt();
    Exception localException = (Exception)paramParcel.readSerializable();
    String str = paramParcel.readString();
    long l = paramParcel.readLong();
    c = new hus(i, localException, str, paramParcel.createByteArray(), l);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(a);
    paramParcel.writeString(b);
    paramParcel.writeInt(c.a());
    paramParcel.writeSerializable(c.b());
    paramParcel.writeString(c.c());
    paramParcel.writeLong(c.g());
    paramParcel.writeByteArray(c.e());
  }
}

/* Location:
 * Qualified Name:     hue
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */