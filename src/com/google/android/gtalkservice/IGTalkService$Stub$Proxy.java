package com.google.android.gtalkservice;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.ArrayList;
import java.util.List;

class IGTalkService$Stub$Proxy
  implements IGTalkService
{
  private IBinder mRemote;
  
  IGTalkService$Stub$Proxy(IBinder paramIBinder)
  {
    mRemote = paramIBinder;
  }
  
  public IBinder asBinder()
  {
    return mRemote;
  }
  
  public void createGTalkConnection(String paramString, IGTalkConnectionListener paramIGTalkConnectionListener)
    throws RemoteException
  {
    Object localObject = null;
    Parcel localParcel = Parcel.obtain();
    try
    {
      localParcel.writeInterfaceToken("com.google.android.gtalkservice.IGTalkService");
      localParcel.writeString(paramString);
      paramString = (String)localObject;
      if (paramIGTalkConnectionListener != null) {
        paramString = paramIGTalkConnectionListener.asBinder();
      }
      localParcel.writeStrongBinder(paramString);
      mRemote.transact(1, localParcel, null, 1);
      return;
    }
    finally
    {
      localParcel.recycle();
    }
  }
  
  public void dismissAllNotifications()
    throws RemoteException
  {
    Parcel localParcel = Parcel.obtain();
    try
    {
      localParcel.writeInterfaceToken("com.google.android.gtalkservice.IGTalkService");
      mRemote.transact(6, localParcel, null, 1);
      return;
    }
    finally
    {
      localParcel.recycle();
    }
  }
  
  public void dismissNotificationFor(String paramString, long paramLong)
    throws RemoteException
  {
    Parcel localParcel = Parcel.obtain();
    try
    {
      localParcel.writeInterfaceToken("com.google.android.gtalkservice.IGTalkService");
      localParcel.writeString(paramString);
      localParcel.writeLong(paramLong);
      mRemote.transact(8, localParcel, null, 1);
      return;
    }
    finally
    {
      localParcel.recycle();
    }
  }
  
  public void dismissNotificationsForAccount(long paramLong)
    throws RemoteException
  {
    Parcel localParcel = Parcel.obtain();
    try
    {
      localParcel.writeInterfaceToken("com.google.android.gtalkservice.IGTalkService");
      localParcel.writeLong(paramLong);
      mRemote.transact(7, localParcel, null, 1);
      return;
    }
    finally
    {
      localParcel.recycle();
    }
  }
  
  public List getActiveConnections()
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gtalkservice.IGTalkService");
      mRemote.transact(2, localParcel1, localParcel2, 0);
      localParcel2.readException();
      ArrayList localArrayList = localParcel2.readArrayList(getClass().getClassLoader());
      return localArrayList;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }
  
  public IGTalkConnection getConnectionForUser(String paramString)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gtalkservice.IGTalkService");
      localParcel1.writeString(paramString);
      mRemote.transact(3, localParcel1, localParcel2, 0);
      localParcel2.readException();
      paramString = IGTalkConnection.Stub.asInterface(localParcel2.readStrongBinder());
      return paramString;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }
  
  public IGTalkConnection getDefaultConnection()
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gtalkservice.IGTalkService");
      mRemote.transact(4, localParcel1, localParcel2, 0);
      localParcel2.readException();
      IGTalkConnection localIGTalkConnection = IGTalkConnection.Stub.asInterface(localParcel2.readStrongBinder());
      return localIGTalkConnection;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }
  
  public boolean getDeviceStorageLow()
    throws RemoteException
  {
    boolean bool = false;
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gtalkservice.IGTalkService");
      mRemote.transact(9, localParcel1, localParcel2, 0);
      localParcel2.readException();
      int i = localParcel2.readInt();
      if (i != 0) {
        bool = true;
      }
      return bool;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }
  
  public IImSession getImSessionForAccountId(long paramLong)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gtalkservice.IGTalkService");
      localParcel1.writeLong(paramLong);
      mRemote.transact(5, localParcel1, localParcel2, 0);
      localParcel2.readException();
      IImSession localIImSession = IImSession.Stub.asInterface(localParcel2.readStrongBinder());
      return localIImSession;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }
  
  public String printDiagnostics()
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gtalkservice.IGTalkService");
      mRemote.transact(10, localParcel1, localParcel2, 0);
      localParcel2.readException();
      String str = localParcel2.readString();
      return str;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }
  
  public void setTalkForegroundState()
    throws RemoteException
  {
    Parcel localParcel = Parcel.obtain();
    try
    {
      localParcel.writeInterfaceToken("com.google.android.gtalkservice.IGTalkService");
      mRemote.transact(11, localParcel, null, 1);
      return;
    }
    finally
    {
      localParcel.recycle();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gtalkservice.IGTalkService.Stub.Proxy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */