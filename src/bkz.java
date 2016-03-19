import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public final class bkz
  extends bkq
  implements Parcelable
{
  public static final Parcelable.Creator<bkz> CREATOR = new bla();
  public geo e;
  
  public bkz() {}
  
  bkz(Parcel paramParcel)
  {
    super.b(paramParcel);
    paramParcel = (crx)paramParcel.readParcelable(crx.class.getClassLoader());
    fii.a(paramParcel, "Null place not allowed!");
    if (paramParcel == null) {}
    for (paramParcel = null;; paramParcel = paramParcel.a())
    {
      e = paramParcel;
      return;
    }
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    fii.a(e, "Location can not be null!");
    super.a(paramParcel);
    paramParcel.writeParcelable(crx.a(e), 0);
  }
}

/* Location:
 * Qualified Name:     bkz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */