package com.google.android.gtalkservice;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

class IHttpRequestCallback$Stub$Proxy
  implements IHttpRequestCallback
{
  private IBinder mRemote;
  
  IHttpRequestCallback$Stub$Proxy(IBinder paramIBinder)
  {
    mRemote = paramIBinder;
  }
  
  public IBinder asBinder()
  {
    return mRemote;
  }
  
  public void requestComplete(byte[] paramArrayOfByte)
    throws RemoteException
  {
    Parcel localParcel = Parcel.obtain();
    try
    {
      localParcel.writeInterfaceToken("com.google.android.gtalkservice.IHttpRequestCallback");
      localParcel.writeByteArray(paramArrayOfByte);
      mRemote.transact(1, localParcel, null, 1);
      return;
    }
    finally
    {
      localParcel.recycle();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gtalkservice.IHttpRequestCallback.Stub.Proxy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */