import android.os.IBinder;
import android.os.Parcel;

final class flw
  implements flu
{
  private IBinder a;
  
  flw(IBinder paramIBinder)
  {
    a = paramIBinder;
  }
  
  public void a()
  {
    Parcel localParcel = Parcel.obtain();
    try
    {
      localParcel.writeInterfaceToken("com.google.android.gms.common.internal.ICancelToken");
      a.transact(2, localParcel, null, 1);
      return;
    }
    finally
    {
      localParcel.recycle();
    }
  }
  
  public IBinder asBinder()
  {
    return a;
  }
}

/* Location:
 * Qualified Name:     flw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */