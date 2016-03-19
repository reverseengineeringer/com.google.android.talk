import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public final class bcs
  implements Parcelable
{
  public static final Parcelable.Creator<bcs> CREATOR = new bct();
  public bcj a;
  public boolean b;
  public int c;
  public boolean d;
  
  public bcs()
  {
    a = bcj.a;
  }
  
  protected bcs(Parcel paramParcel)
  {
    a = bcj.values()[paramParcel.readInt()];
    if (paramParcel.readByte() != 0)
    {
      bool1 = true;
      b = bool1;
      c = paramParcel.readInt();
      if (paramParcel.readByte() == 0) {
        break label60;
      }
    }
    label60:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      d = bool1;
      return;
      bool1 = false;
      break;
    }
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    byte b2 = 1;
    paramParcel.writeInt(a.ordinal());
    if (b)
    {
      b1 = 1;
      paramParcel.writeByte(b1);
      paramParcel.writeInt(c);
      if (!d) {
        break label57;
      }
    }
    label57:
    for (byte b1 = b2;; b1 = 0)
    {
      paramParcel.writeByte(b1);
      return;
      b1 = 0;
      break;
    }
  }
}

/* Location:
 * Qualified Name:     bcs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */