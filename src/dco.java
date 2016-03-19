import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public final class dco
  implements Parcelable
{
  public static final Parcelable.Creator<dco> CREATOR = new dcp();
  public final int a;
  public final Bundle b;
  public final int c;
  
  public dco(int paramInt1, int paramInt2)
  {
    this(paramInt1, paramInt2, null);
  }
  
  public dco(int paramInt1, int paramInt2, Bundle paramBundle)
  {
    c = paramInt1;
    a = paramInt2;
    b = paramBundle;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(c);
    paramParcel.writeInt(a);
    paramParcel.writeBundle(b);
  }
}

/* Location:
 * Qualified Name:     dco
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */