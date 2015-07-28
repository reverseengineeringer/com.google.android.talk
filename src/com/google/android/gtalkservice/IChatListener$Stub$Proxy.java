package com.google.android.gtalkservice;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

class IChatListener$Stub$Proxy
  implements IChatListener
{
  private IBinder mRemote;
  
  IChatListener$Stub$Proxy(IBinder paramIBinder)
  {
    mRemote = paramIBinder;
  }
  
  public IBinder asBinder()
  {
    return mRemote;
  }
  
  public void callEnded()
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gtalkservice.IChatListener");
      mRemote.transact(4, localParcel1, localParcel2, 0);
      localParcel2.readException();
      return;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }
  
  public void chatClosed(String paramString)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gtalkservice.IChatListener");
      localParcel1.writeString(paramString);
      mRemote.transact(6, localParcel1, localParcel2, 0);
      localParcel2.readException();
      return;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }
  
  public void chatRead(String paramString)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gtalkservice.IChatListener");
      localParcel1.writeString(paramString);
      mRemote.transact(5, localParcel1, localParcel2, 0);
      localParcel2.readException();
      return;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }
  
  public void convertedToGroupChat(String paramString1, String paramString2, long paramLong)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gtalkservice.IChatListener");
      localParcel1.writeString(paramString1);
      localParcel1.writeString(paramString2);
      localParcel1.writeLong(paramLong);
      mRemote.transact(8, localParcel1, localParcel2, 0);
      localParcel2.readException();
      return;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }
  
  public void missedCall()
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gtalkservice.IChatListener");
      mRemote.transact(3, localParcel1, localParcel2, 0);
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
  public void newMessageReceived(String paramString1, String paramString2, boolean paramBoolean)
    throws RemoteException
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore 4
    //   3: invokestatic 31	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   6: astore 5
    //   8: invokestatic 31	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   11: astore 6
    //   13: aload 5
    //   15: ldc 33
    //   17: invokevirtual 37	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   20: aload 5
    //   22: aload_1
    //   23: invokevirtual 54	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   26: aload 5
    //   28: aload_2
    //   29: invokevirtual 54	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   32: iload_3
    //   33: ifeq +42 -> 75
    //   36: aload 5
    //   38: iload 4
    //   40: invokevirtual 68	android/os/Parcel:writeInt	(I)V
    //   43: aload_0
    //   44: getfield 19	com/google/android/gtalkservice/IChatListener$Stub$Proxy:mRemote	Landroid/os/IBinder;
    //   47: iconst_1
    //   48: aload 5
    //   50: aload 6
    //   52: iconst_0
    //   53: invokeinterface 43 5 0
    //   58: pop
    //   59: aload 6
    //   61: invokevirtual 46	android/os/Parcel:readException	()V
    //   64: aload 6
    //   66: invokevirtual 49	android/os/Parcel:recycle	()V
    //   69: aload 5
    //   71: invokevirtual 49	android/os/Parcel:recycle	()V
    //   74: return
    //   75: iconst_0
    //   76: istore 4
    //   78: goto -42 -> 36
    //   81: astore_1
    //   82: aload 6
    //   84: invokevirtual 49	android/os/Parcel:recycle	()V
    //   87: aload 5
    //   89: invokevirtual 49	android/os/Parcel:recycle	()V
    //   92: aload_1
    //   93: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	94	0	this	Proxy
    //   0	94	1	paramString1	String
    //   0	94	2	paramString2	String
    //   0	94	3	paramBoolean	boolean
    //   1	76	4	i	int
    //   6	82	5	localParcel1	Parcel
    //   11	72	6	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   13	32	81	finally
    //   36	64	81	finally
  }
  
  public void newMessageSent(String paramString)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gtalkservice.IChatListener");
      localParcel1.writeString(paramString);
      mRemote.transact(2, localParcel1, localParcel2, 0);
      localParcel2.readException();
      return;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }
  
  public void participantJoined(String paramString1, String paramString2)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gtalkservice.IChatListener");
      localParcel1.writeString(paramString1);
      localParcel1.writeString(paramString2);
      mRemote.transact(9, localParcel1, localParcel2, 0);
      localParcel2.readException();
      return;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }
  
  public void participantLeft(String paramString1, String paramString2)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gtalkservice.IChatListener");
      localParcel1.writeString(paramString1);
      localParcel1.writeString(paramString2);
      mRemote.transact(10, localParcel1, localParcel2, 0);
      localParcel2.readException();
      return;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }
  
  public boolean useLightweightNotify()
    throws RemoteException
  {
    boolean bool = false;
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gtalkservice.IChatListener");
      mRemote.transact(11, localParcel1, localParcel2, 0);
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
  
  public void willConvertToGroupChat(String paramString1, String paramString2, long paramLong)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gtalkservice.IChatListener");
      localParcel1.writeString(paramString1);
      localParcel1.writeString(paramString2);
      localParcel1.writeLong(paramLong);
      mRemote.transact(7, localParcel1, localParcel2, 0);
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

/* Location:
 * Qualified Name:     com.google.android.gtalkservice.IChatListener.Stub.Proxy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */