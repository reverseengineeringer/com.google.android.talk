package com.google.android.gtalkservice;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public abstract class IJingleInfoStanzaListener$Stub
  extends Binder
  implements IJingleInfoStanzaListener
{
  public IJingleInfoStanzaListener$Stub()
  {
    attachInterface(this, "com.google.android.gtalkservice.IJingleInfoStanzaListener");
  }
  
  public static IJingleInfoStanzaListener asInterface(IBinder paramIBinder)
  {
    if (paramIBinder == null) {
      return null;
    }
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gtalkservice.IJingleInfoStanzaListener");
    if ((localIInterface != null) && ((localIInterface instanceof IJingleInfoStanzaListener))) {
      return (IJingleInfoStanzaListener)localIInterface;
    }
    return new Proxy(paramIBinder);
  }
  
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
    throws RemoteException
  {
    switch (paramInt1)
    {
    default: 
      return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    case 1598968902: 
      paramParcel2.writeString("com.google.android.gtalkservice.IJingleInfoStanzaListener");
      return true;
    case 1: 
      paramParcel1.enforceInterface("com.google.android.gtalkservice.IJingleInfoStanzaListener");
      onStanzaReceived(paramParcel1.readString());
      paramParcel2.writeNoException();
      return true;
    }
    paramParcel1.enforceInterface("com.google.android.gtalkservice.IJingleInfoStanzaListener");
    long l = getAccountId();
    paramParcel2.writeNoException();
    paramParcel2.writeLong(l);
    return true;
  }
  
  private static class Proxy
    implements IJingleInfoStanzaListener
  {
    private IBinder mRemote;
    
    Proxy(IBinder paramIBinder)
    {
      mRemote = paramIBinder;
    }
    
    public IBinder asBinder()
    {
      return mRemote;
    }
    
    public long getAccountId()
      throws RemoteException
    {
      Parcel localParcel1 = Parcel.obtain();
      Parcel localParcel2 = Parcel.obtain();
      try
      {
        localParcel1.writeInterfaceToken("com.google.android.gtalkservice.IJingleInfoStanzaListener");
        mRemote.transact(2, localParcel1, localParcel2, 0);
        localParcel2.readException();
        long l = localParcel2.readLong();
        return l;
      }
      finally
      {
        localParcel2.recycle();
        localParcel1.recycle();
      }
    }
    
    public void onStanzaReceived(String paramString)
      throws RemoteException
    {
      Parcel localParcel1 = Parcel.obtain();
      Parcel localParcel2 = Parcel.obtain();
      try
      {
        localParcel1.writeInterfaceToken("com.google.android.gtalkservice.IJingleInfoStanzaListener");
        localParcel1.writeString(paramString);
        mRemote.transact(1, localParcel1, localParcel2, 0);
        localParcel2.readException();
        return;
      }
      finally
      {
        localParcel2.recycle();
        localParcel1.recycle();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gtalkservice.IJingleInfoStanzaListener.Stub
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */