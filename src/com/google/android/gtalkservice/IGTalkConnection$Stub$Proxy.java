package com.google.android.gtalkservice;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

class IGTalkConnection$Stub$Proxy
  implements IGTalkConnection
{
  private IBinder mRemote;
  
  IGTalkConnection$Stub$Proxy(IBinder paramIBinder)
  {
    mRemote = paramIBinder;
  }
  
  public IBinder asBinder()
  {
    return mRemote;
  }
  
  public void clearConnectionStatistics()
    throws RemoteException
  {
    Parcel localParcel = Parcel.obtain();
    try
    {
      localParcel.writeInterfaceToken("com.google.android.gtalkservice.IGTalkConnection");
      mRemote.transact(13, localParcel, null, 1);
      return;
    }
    finally
    {
      localParcel.recycle();
    }
  }
  
  public IImSession createImSession()
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gtalkservice.IGTalkConnection");
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
  
  public int getConnectionUptime()
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gtalkservice.IGTalkConnection");
      mRemote.transact(12, localParcel1, localParcel2, 0);
      localParcel2.readException();
      int i = localParcel2.readInt();
      return i;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }
  
  public IImSession getDefaultImSession()
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gtalkservice.IGTalkConnection");
      mRemote.transact(7, localParcel1, localParcel2, 0);
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
  
  public String getDeviceId()
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gtalkservice.IGTalkConnection");
      mRemote.transact(3, localParcel1, localParcel2, 0);
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
  
  public IImSession getImSessionForAccountId(long paramLong)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gtalkservice.IGTalkConnection");
      localParcel1.writeLong(paramLong);
      mRemote.transact(6, localParcel1, localParcel2, 0);
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
  
  public String getJid()
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gtalkservice.IGTalkConnection");
      mRemote.transact(2, localParcel1, localParcel2, 0);
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
  
  public long getLastActivityFromServerTime()
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gtalkservice.IGTalkConnection");
      mRemote.transact(8, localParcel1, localParcel2, 0);
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
  
  public long getLastActivityToServerTime()
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gtalkservice.IGTalkConnection");
      mRemote.transact(9, localParcel1, localParcel2, 0);
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
  
  public int getNumberOfConnectionsAttempted()
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gtalkservice.IGTalkConnection");
      mRemote.transact(11, localParcel1, localParcel2, 0);
      localParcel2.readException();
      int i = localParcel2.readInt();
      return i;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }
  
  public int getNumberOfConnectionsMade()
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gtalkservice.IGTalkConnection");
      mRemote.transact(10, localParcel1, localParcel2, 0);
      localParcel2.readException();
      int i = localParcel2.readInt();
      return i;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }
  
  public String getUsername()
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gtalkservice.IGTalkConnection");
      mRemote.transact(1, localParcel1, localParcel2, 0);
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
  
  public boolean isConnected()
    throws RemoteException
  {
    boolean bool = false;
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gtalkservice.IGTalkConnection");
      mRemote.transact(4, localParcel1, localParcel2, 0);
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
  
  public void sendHeartbeat()
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gtalkservice.IGTalkConnection");
      mRemote.transact(15, localParcel1, localParcel2, 0);
      localParcel2.readException();
      return;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }
  
  /* Error */
  public void sendHttpRequest(byte[] paramArrayOfByte, IHttpRequestCallback paramIHttpRequestCallback)
    throws RemoteException
  {
    // Byte code:
    //   0: invokestatic 31	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   3: astore_3
    //   4: invokestatic 31	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   7: astore 4
    //   9: aload_3
    //   10: ldc 33
    //   12: invokevirtual 37	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   15: aload_3
    //   16: aload_1
    //   17: invokevirtual 97	android/os/Parcel:writeByteArray	([B)V
    //   20: aload_2
    //   21: ifnull +46 -> 67
    //   24: aload_2
    //   25: invokeinterface 101 1 0
    //   30: astore_1
    //   31: aload_3
    //   32: aload_1
    //   33: invokevirtual 104	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   36: aload_0
    //   37: getfield 19	com/google/android/gtalkservice/IGTalkConnection$Stub$Proxy:mRemote	Landroid/os/IBinder;
    //   40: bipush 14
    //   42: aload_3
    //   43: aload 4
    //   45: iconst_0
    //   46: invokeinterface 43 5 0
    //   51: pop
    //   52: aload 4
    //   54: invokevirtual 52	android/os/Parcel:readException	()V
    //   57: aload 4
    //   59: invokevirtual 46	android/os/Parcel:recycle	()V
    //   62: aload_3
    //   63: invokevirtual 46	android/os/Parcel:recycle	()V
    //   66: return
    //   67: aconst_null
    //   68: astore_1
    //   69: goto -38 -> 31
    //   72: astore_1
    //   73: aload 4
    //   75: invokevirtual 46	android/os/Parcel:recycle	()V
    //   78: aload_3
    //   79: invokevirtual 46	android/os/Parcel:recycle	()V
    //   82: aload_1
    //   83: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	84	0	this	Proxy
    //   0	84	1	paramArrayOfByte	byte[]
    //   0	84	2	paramIHttpRequestCallback	IHttpRequestCallback
    //   3	76	3	localParcel1	Parcel
    //   7	67	4	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   9	20	72	finally
    //   24	31	72	finally
    //   31	57	72	finally
  }
}

/* Location:
 * Qualified Name:     com.google.android.gtalkservice.IGTalkConnection.Stub.Proxy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */