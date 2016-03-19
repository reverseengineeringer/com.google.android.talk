import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;

@Deprecated
public final class idb
  implements Parcelable
{
  public static final Parcelable.Creator<idb> CREATOR = new idc();
  private final long a;
  private final String b;
  
  idb(Parcel paramParcel)
  {
    b = paramParcel.readString();
    a = paramParcel.readLong();
  }
  
  public idb(String paramString, long paramLong)
  {
    b = paramString;
    a = paramLong;
  }
  
  public long a()
  {
    return a;
  }
  
  public boolean b()
  {
    return a != 0L;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if ((paramObject instanceof idb))
    {
      paramObject = (idb)paramObject;
      bool1 = bool2;
      if (a == a)
      {
        bool1 = bool2;
        if (TextUtils.equals(b, b)) {
          bool1 = true;
        }
      }
    }
    return bool1;
  }
  
  public int hashCode()
  {
    int j = (int)(a ^ a >>> 32);
    int i = j;
    if (b != null) {
      i = j ^ b.hashCode();
    }
    return i;
  }
  
  public String toString()
  {
    String str = b;
    long l = a;
    return String.valueOf(str).length() + 26 + "g-" + str + ", p-" + l;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(b);
    paramParcel.writeLong(a);
  }
}

/* Location:
 * Qualified Name:     idb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */