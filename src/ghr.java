import android.os.IBinder;
import android.os.Parcel;

final class ghr
  implements ghp
{
  private IBinder a;
  
  ghr(IBinder paramIBinder)
  {
    a = paramIBinder;
  }
  
  public void a()
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.IOnMapLoadedCallback");
      a.transact(1, localParcel1, localParcel2, 0);
      localParcel2.readException();
      return;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }
  
  public IBinder asBinder()
  {
    return a;
  }
}

/* Location:
 * Qualified Name:     ghr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */