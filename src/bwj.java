import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public final class bwj
  implements Parcelable, bcn
{
  public static final Parcelable.Creator<bwj> CREATOR = new bwk();
  private final String a;
  private final int b;
  private final long c;
  
  public bwj(Parcel paramParcel)
  {
    this(paramParcel.readString(), paramParcel.readInt(), paramParcel.readLong());
  }
  
  public bwj(String paramString, int paramInt, long paramLong)
  {
    a = paramString;
    b = paramInt;
    c = paramLong;
  }
  
  public int a(Context paramContext, bcg parambcg)
  {
    paramContext = new bfz(paramContext, b);
    paramContext.a();
    try
    {
      paramContext.g(a, c);
      paramContext.b();
      return bco.a;
    }
    finally
    {
      paramContext.c();
    }
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(a);
    paramParcel.writeInt(b);
    paramParcel.writeLong(c);
  }
}

/* Location:
 * Qualified Name:     bwj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */