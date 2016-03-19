import android.os.IBinder;
import android.os.Parcel;

final class ffz
  implements ffx
{
  private IBinder a;
  
  ffz(IBinder paramIBinder)
  {
    a = paramIBinder;
  }
  
  public void a(int paramInt)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.apps.tycho.IProxyNumberCallback");
      localParcel1.writeInt(paramInt);
      a.transact(2, localParcel1, localParcel2, 0);
      localParcel2.readException();
      return;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }
  
  public void a(String paramString1, String paramString2)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.apps.tycho.IProxyNumberCallback");
      localParcel1.writeString(paramString1);
      localParcel1.writeString(paramString2);
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
 * Qualified Name:     ffz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */