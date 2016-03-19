import android.os.Parcel;
import android.os.Parcelable.Creator;

public final class gt<T>
  implements Parcelable.Creator<T>
{
  final gu<T> a;
  
  public gt(gu<T> paramgu)
  {
    a = paramgu;
  }
  
  public T createFromParcel(Parcel paramParcel)
  {
    return (T)a.a(paramParcel, null);
  }
  
  public T[] newArray(int paramInt)
  {
    return a.a(paramInt);
  }
}

/* Location:
 * Qualified Name:     gt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */