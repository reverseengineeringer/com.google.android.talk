import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

final class bp
  implements Parcelable
{
  public static final Parcelable.Creator<bp> CREATOR = new bq();
  bs[] a;
  int[] b;
  aq[] c;
  
  public bp() {}
  
  public bp(Parcel paramParcel)
  {
    a = ((bs[])paramParcel.createTypedArray(bs.CREATOR));
    b = paramParcel.createIntArray();
    c = ((aq[])paramParcel.createTypedArray(aq.CREATOR));
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeTypedArray(a, paramInt);
    paramParcel.writeIntArray(b);
    paramParcel.writeTypedArray(c, paramInt);
  }
}

/* Location:
 * Qualified Name:     bp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */