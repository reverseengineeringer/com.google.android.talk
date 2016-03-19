import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public final class eym<T>
  implements Parcelable
{
  public static final Parcelable.Creator<eym> CREATOR = new eyn();
  private eyo<T> a;
  
  eym(Parcel paramParcel)
  {
    a = ((eyo)paramParcel.readStrongBinder());
  }
  
  public eym(T paramT)
  {
    a = new eyo(paramT);
  }
  
  public T a()
  {
    return (T)a.a;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeStrongBinder(a.asBinder());
  }
}

/* Location:
 * Qualified Name:     eym
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */