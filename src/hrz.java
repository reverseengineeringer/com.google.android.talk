import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public final class hrz
  implements Parcelable
{
  public static final Parcelable.Creator<hrz> CREATOR = new hsa();
  public final int a;
  public final int b;
  public final Intent c;
  
  public hrz(int paramInt1, int paramInt2, Intent paramIntent)
  {
    a = paramInt1;
    b = paramInt2;
    c = paramIntent;
  }
  
  hrz(Parcel paramParcel)
  {
    a = paramParcel.readInt();
    b = paramParcel.readInt();
    c = ((Intent)paramParcel.readParcelable(Intent.class.getClassLoader()));
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(a);
    paramParcel.writeInt(b);
    paramParcel.writeParcelable(c, paramInt);
  }
}

/* Location:
 * Qualified Name:     hrz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */