import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public final class ifw
  implements Parcelable
{
  public static final Parcelable.Creator<ifw> CREATOR = new ifx();
  public final int a;
  public final String[] b;
  public final int[] c;
  
  public ifw(int paramInt, String[] paramArrayOfString, int[] paramArrayOfInt)
  {
    a = paramInt;
    b = paramArrayOfString;
    c = paramArrayOfInt;
  }
  
  ifw(Parcel paramParcel)
  {
    a = paramParcel.readInt();
    b = paramParcel.createStringArray();
    c = paramParcel.createIntArray();
  }
  
  igb a()
  {
    return new igb(b, c);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(a);
    paramParcel.writeStringArray(b);
    paramParcel.writeIntArray(c);
  }
}

/* Location:
 * Qualified Name:     ifw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */