package com.google.android.gtalkservice;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public abstract interface IHttpRequestCallback
  extends IInterface
{
  public abstract void requestComplete(byte[] paramArrayOfByte)
    throws RemoteException;
  
  public static abstract class Stub
    extends Binder
    implements IHttpRequestCallback
  {
    public Stub()
    {
      attachInterface(this, "com.google.android.gtalkservice.IHttpRequestCallback");
    }
    
    public static IHttpRequestCallback asInterface(IBinder paramIBinder)
    {
      if (paramIBinder == null) {
        return null;
      }
      IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gtalkservice.IHttpRequestCallback");
      if ((localIInterface != null) && ((localIInterface instanceof IHttpRequestCallback))) {
        return (IHttpRequestCallback)localIInterface;
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
        paramParcel2.writeString("com.google.android.gtalkservice.IHttpRequestCallback");
        return true;
      }
      paramParcel1.enforceInterface("com.google.android.gtalkservice.IHttpRequestCallback");
      requestComplete(paramParcel1.createByteArray());
      return true;
    }
    
    private static class Proxy
      implements IHttpRequestCallback
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
  }
}

/* Location:
 * Qualified Name:     com.google.android.gtalkservice.IHttpRequestCallback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */