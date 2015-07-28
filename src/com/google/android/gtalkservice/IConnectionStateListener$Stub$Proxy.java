package com.google.android.gtalkservice;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

class IConnectionStateListener$Stub$Proxy
  implements IConnectionStateListener
{
  private IBinder mRemote;
  
  IConnectionStateListener$Stub$Proxy(IBinder paramIBinder)
  {
    mRemote = paramIBinder;
  }
  
  public IBinder asBinder()
  {
    return mRemote;
  }
  
  public void connectionStateChanged(ConnectionState paramConnectionState, ConnectionError paramConnectionError, long paramLong, String paramString)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    for (;;)
    {
      try
      {
        localParcel1.writeInterfaceToken("com.google.android.gtalkservice.IConnectionStateListener");
        if (paramConnectionState != null)
        {
          localParcel1.writeInt(1);
          paramConnectionState.writeToParcel(localParcel1, 0);
          if (paramConnectionError != null)
          {
            localParcel1.writeInt(1);
            paramConnectionError.writeToParcel(localParcel1, 0);
            localParcel1.writeLong(paramLong);
            localParcel1.writeString(paramString);
            mRemote.transact(1, localParcel1, localParcel2, 0);
            localParcel2.readException();
          }
        }
        else
        {
          localParcel1.writeInt(0);
          continue;
        }
        localParcel1.writeInt(0);
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
 * Qualified Name:     com.google.android.gtalkservice.IConnectionStateListener.Stub.Proxy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */