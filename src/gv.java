import android.os.Parcel;
import android.os.Parcelable.ClassLoaderCreator;

public final class gv<T>
  implements Parcelable.ClassLoaderCreator<T>
{
  private final gu<T> a;
  
  public gv(gu<T> paramgu)
  {
    a = paramgu;
  }
  
  public T createFromParcel(Parcel paramParcel)
  {
    return (T)a.a(paramParcel, null);
  }
  
  public T createFromParcel(Parcel paramParcel, ClassLoader paramClassLoader)
  {
    return (T)a.a(paramParcel, paramClassLoader);
  }
  
  public T[] newArray(int paramInt)
  {
    return a.a(paramInt);
  }
}

/* Location:
 * Qualified Name:     gv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */