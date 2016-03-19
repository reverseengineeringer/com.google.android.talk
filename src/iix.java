import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

final class iix
  extends ijd
{
  public static final Parcelable.Creator<iix> CREATOR = new iiy();
  String a;
  
  public iix(Parcel paramParcel)
  {
    super(paramParcel);
    a = paramParcel.readString();
  }
  
  public iix(Parcelable paramParcelable)
  {
    super(paramParcelable);
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeString(a);
  }
}

/* Location:
 * Qualified Name:     iix
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */