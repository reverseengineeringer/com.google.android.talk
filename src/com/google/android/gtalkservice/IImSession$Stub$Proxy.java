package com.google.android.gtalkservice;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

class IImSession$Stub$Proxy
  implements IImSession
{
  private IBinder mRemote;
  
  IImSession$Stub$Proxy(IBinder paramIBinder)
  {
    mRemote = paramIBinder;
  }
  
  /* Error */
  public void addConnectionStateListener(IConnectionStateListener paramIConnectionStateListener)
    throws RemoteException
  {
    // Byte code:
    //   0: invokestatic 30	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   3: astore_2
    //   4: invokestatic 30	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   7: astore_3
    //   8: aload_2
    //   9: ldc 32
    //   11: invokevirtual 36	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   14: aload_1
    //   15: ifnull +43 -> 58
    //   18: aload_1
    //   19: invokeinterface 42 1 0
    //   24: astore_1
    //   25: aload_2
    //   26: aload_1
    //   27: invokevirtual 45	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   30: aload_0
    //   31: getfield 19	com/google/android/gtalkservice/IImSession$Stub$Proxy:mRemote	Landroid/os/IBinder;
    //   34: bipush 7
    //   36: aload_2
    //   37: aload_3
    //   38: iconst_0
    //   39: invokeinterface 51 5 0
    //   44: pop
    //   45: aload_3
    //   46: invokevirtual 54	android/os/Parcel:readException	()V
    //   49: aload_3
    //   50: invokevirtual 57	android/os/Parcel:recycle	()V
    //   53: aload_2
    //   54: invokevirtual 57	android/os/Parcel:recycle	()V
    //   57: return
    //   58: aconst_null
    //   59: astore_1
    //   60: goto -35 -> 25
    //   63: astore_1
    //   64: aload_3
    //   65: invokevirtual 57	android/os/Parcel:recycle	()V
    //   68: aload_2
    //   69: invokevirtual 57	android/os/Parcel:recycle	()V
    //   72: aload_1
    //   73: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	74	0	this	Proxy
    //   0	74	1	paramIConnectionStateListener	IConnectionStateListener
    //   3	66	2	localParcel1	Parcel
    //   7	58	3	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   8	14	63	finally
    //   18	25	63	finally
    //   25	49	63	finally
  }
  
  public void addContact(String paramString1, String paramString2, String[] paramArrayOfString)
    throws RemoteException
  {
    Parcel localParcel = Parcel.obtain();
    try
    {
      localParcel.writeInterfaceToken("com.google.android.gtalkservice.IImSession");
      localParcel.writeString(paramString1);
      localParcel.writeString(paramString2);
      localParcel.writeStringArray(paramArrayOfString);
      mRemote.transact(13, localParcel, null, 1);
      return;
    }
    finally
    {
      localParcel.recycle();
    }
  }
  
  /* Error */
  public void addGroupChatInvitationListener(IGroupChatInvitationListener paramIGroupChatInvitationListener)
    throws RemoteException
  {
    // Byte code:
    //   0: invokestatic 30	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   3: astore_2
    //   4: invokestatic 30	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   7: astore_3
    //   8: aload_2
    //   9: ldc 32
    //   11: invokevirtual 36	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   14: aload_1
    //   15: ifnull +43 -> 58
    //   18: aload_1
    //   19: invokeinterface 72 1 0
    //   24: astore_1
    //   25: aload_2
    //   26: aload_1
    //   27: invokevirtual 45	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   30: aload_0
    //   31: getfield 19	com/google/android/gtalkservice/IImSession$Stub$Proxy:mRemote	Landroid/os/IBinder;
    //   34: bipush 27
    //   36: aload_2
    //   37: aload_3
    //   38: iconst_0
    //   39: invokeinterface 51 5 0
    //   44: pop
    //   45: aload_3
    //   46: invokevirtual 54	android/os/Parcel:readException	()V
    //   49: aload_3
    //   50: invokevirtual 57	android/os/Parcel:recycle	()V
    //   53: aload_2
    //   54: invokevirtual 57	android/os/Parcel:recycle	()V
    //   57: return
    //   58: aconst_null
    //   59: astore_1
    //   60: goto -35 -> 25
    //   63: astore_1
    //   64: aload_3
    //   65: invokevirtual 57	android/os/Parcel:recycle	()V
    //   68: aload_2
    //   69: invokevirtual 57	android/os/Parcel:recycle	()V
    //   72: aload_1
    //   73: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	74	0	this	Proxy
    //   0	74	1	paramIGroupChatInvitationListener	IGroupChatInvitationListener
    //   3	66	2	localParcel1	Parcel
    //   7	58	3	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   8	14	63	finally
    //   18	25	63	finally
    //   25	49	63	finally
  }
  
  /* Error */
  public void addRemoteChatListener(IChatListener paramIChatListener)
    throws RemoteException
  {
    // Byte code:
    //   0: invokestatic 30	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   3: astore_2
    //   4: invokestatic 30	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   7: astore_3
    //   8: aload_2
    //   9: ldc 32
    //   11: invokevirtual 36	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   14: aload_1
    //   15: ifnull +43 -> 58
    //   18: aload_1
    //   19: invokeinterface 77 1 0
    //   24: astore_1
    //   25: aload_2
    //   26: aload_1
    //   27: invokevirtual 45	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   30: aload_0
    //   31: getfield 19	com/google/android/gtalkservice/IImSession$Stub$Proxy:mRemote	Landroid/os/IBinder;
    //   34: bipush 29
    //   36: aload_2
    //   37: aload_3
    //   38: iconst_0
    //   39: invokeinterface 51 5 0
    //   44: pop
    //   45: aload_3
    //   46: invokevirtual 54	android/os/Parcel:readException	()V
    //   49: aload_3
    //   50: invokevirtual 57	android/os/Parcel:recycle	()V
    //   53: aload_2
    //   54: invokevirtual 57	android/os/Parcel:recycle	()V
    //   57: return
    //   58: aconst_null
    //   59: astore_1
    //   60: goto -35 -> 25
    //   63: astore_1
    //   64: aload_3
    //   65: invokevirtual 57	android/os/Parcel:recycle	()V
    //   68: aload_2
    //   69: invokevirtual 57	android/os/Parcel:recycle	()V
    //   72: aload_1
    //   73: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	74	0	this	Proxy
    //   0	74	1	paramIChatListener	IChatListener
    //   3	66	2	localParcel1	Parcel
    //   7	58	3	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   8	14	63	finally
    //   18	25	63	finally
    //   25	49	63	finally
  }
  
  /* Error */
  public void addRemoteJingleInfoStanzaListener(IJingleInfoStanzaListener paramIJingleInfoStanzaListener)
    throws RemoteException
  {
    // Byte code:
    //   0: invokestatic 30	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   3: astore_2
    //   4: invokestatic 30	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   7: astore_3
    //   8: aload_2
    //   9: ldc 32
    //   11: invokevirtual 36	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   14: aload_1
    //   15: ifnull +43 -> 58
    //   18: aload_1
    //   19: invokeinterface 82 1 0
    //   24: astore_1
    //   25: aload_2
    //   26: aload_1
    //   27: invokevirtual 45	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   30: aload_0
    //   31: getfield 19	com/google/android/gtalkservice/IImSession$Stub$Proxy:mRemote	Landroid/os/IBinder;
    //   34: bipush 42
    //   36: aload_2
    //   37: aload_3
    //   38: iconst_0
    //   39: invokeinterface 51 5 0
    //   44: pop
    //   45: aload_3
    //   46: invokevirtual 54	android/os/Parcel:readException	()V
    //   49: aload_3
    //   50: invokevirtual 57	android/os/Parcel:recycle	()V
    //   53: aload_2
    //   54: invokevirtual 57	android/os/Parcel:recycle	()V
    //   57: return
    //   58: aconst_null
    //   59: astore_1
    //   60: goto -35 -> 25
    //   63: astore_1
    //   64: aload_3
    //   65: invokevirtual 57	android/os/Parcel:recycle	()V
    //   68: aload_2
    //   69: invokevirtual 57	android/os/Parcel:recycle	()V
    //   72: aload_1
    //   73: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	74	0	this	Proxy
    //   0	74	1	paramIJingleInfoStanzaListener	IJingleInfoStanzaListener
    //   3	66	2	localParcel1	Parcel
    //   7	58	3	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   8	14	63	finally
    //   18	25	63	finally
    //   25	49	63	finally
  }
  
  /* Error */
  public void addRemoteRosterListener(IRosterListener paramIRosterListener)
    throws RemoteException
  {
    // Byte code:
    //   0: invokestatic 30	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   3: astore_2
    //   4: invokestatic 30	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   7: astore_3
    //   8: aload_2
    //   9: ldc 32
    //   11: invokevirtual 36	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   14: aload_1
    //   15: ifnull +43 -> 58
    //   18: aload_1
    //   19: invokeinterface 87 1 0
    //   24: astore_1
    //   25: aload_2
    //   26: aload_1
    //   27: invokevirtual 45	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   30: aload_0
    //   31: getfield 19	com/google/android/gtalkservice/IImSession$Stub$Proxy:mRemote	Landroid/os/IBinder;
    //   34: bipush 31
    //   36: aload_2
    //   37: aload_3
    //   38: iconst_0
    //   39: invokeinterface 51 5 0
    //   44: pop
    //   45: aload_3
    //   46: invokevirtual 54	android/os/Parcel:readException	()V
    //   49: aload_3
    //   50: invokevirtual 57	android/os/Parcel:recycle	()V
    //   53: aload_2
    //   54: invokevirtual 57	android/os/Parcel:recycle	()V
    //   57: return
    //   58: aconst_null
    //   59: astore_1
    //   60: goto -35 -> 25
    //   63: astore_1
    //   64: aload_3
    //   65: invokevirtual 57	android/os/Parcel:recycle	()V
    //   68: aload_2
    //   69: invokevirtual 57	android/os/Parcel:recycle	()V
    //   72: aload_1
    //   73: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	74	0	this	Proxy
    //   0	74	1	paramIRosterListener	IRosterListener
    //   3	66	2	localParcel1	Parcel
    //   7	58	3	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   8	14	63	finally
    //   18	25	63	finally
    //   25	49	63	finally
  }
  
  /* Error */
  public void addRemoteSessionStanzaListener(ISessionStanzaListener paramISessionStanzaListener)
    throws RemoteException
  {
    // Byte code:
    //   0: invokestatic 30	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   3: astore_2
    //   4: invokestatic 30	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   7: astore_3
    //   8: aload_2
    //   9: ldc 32
    //   11: invokevirtual 36	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   14: aload_1
    //   15: ifnull +43 -> 58
    //   18: aload_1
    //   19: invokeinterface 92 1 0
    //   24: astore_1
    //   25: aload_2
    //   26: aload_1
    //   27: invokevirtual 45	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   30: aload_0
    //   31: getfield 19	com/google/android/gtalkservice/IImSession$Stub$Proxy:mRemote	Landroid/os/IBinder;
    //   34: bipush 39
    //   36: aload_2
    //   37: aload_3
    //   38: iconst_0
    //   39: invokeinterface 51 5 0
    //   44: pop
    //   45: aload_3
    //   46: invokevirtual 54	android/os/Parcel:readException	()V
    //   49: aload_3
    //   50: invokevirtual 57	android/os/Parcel:recycle	()V
    //   53: aload_2
    //   54: invokevirtual 57	android/os/Parcel:recycle	()V
    //   57: return
    //   58: aconst_null
    //   59: astore_1
    //   60: goto -35 -> 25
    //   63: astore_1
    //   64: aload_3
    //   65: invokevirtual 57	android/os/Parcel:recycle	()V
    //   68: aload_2
    //   69: invokevirtual 57	android/os/Parcel:recycle	()V
    //   72: aload_1
    //   73: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	74	0	this	Proxy
    //   0	74	1	paramISessionStanzaListener	ISessionStanzaListener
    //   3	66	2	localParcel1	Parcel
    //   7	58	3	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   8	14	63	finally
    //   18	25	63	finally
    //   25	49	63	finally
  }
  
  public void approveSubscriptionRequest(String paramString1, String paramString2, String[] paramArrayOfString)
    throws RemoteException
  {
    Parcel localParcel = Parcel.obtain();
    try
    {
      localParcel.writeInterfaceToken("com.google.android.gtalkservice.IImSession");
      localParcel.writeString(paramString1);
      localParcel.writeString(paramString2);
      localParcel.writeStringArray(paramArrayOfString);
      mRemote.transact(20, localParcel, null, 1);
      return;
    }
    finally
    {
      localParcel.recycle();
    }
  }
  
  public IBinder asBinder()
  {
    return mRemote;
  }
  
  public void blockContact(String paramString)
    throws RemoteException
  {
    Parcel localParcel = Parcel.obtain();
    try
    {
      localParcel.writeInterfaceToken("com.google.android.gtalkservice.IImSession");
      localParcel.writeString(paramString);
      mRemote.transact(16, localParcel, null, 1);
      return;
    }
    finally
    {
      localParcel.recycle();
    }
  }
  
  public void clearContactFlags(String paramString)
    throws RemoteException
  {
    Parcel localParcel = Parcel.obtain();
    try
    {
      localParcel.writeInterfaceToken("com.google.android.gtalkservice.IImSession");
      localParcel.writeString(paramString);
      mRemote.transact(19, localParcel, null, 1);
      return;
    }
    finally
    {
      localParcel.recycle();
    }
  }
  
  public void closeAllChatSessions()
    throws RemoteException
  {
    Parcel localParcel = Parcel.obtain();
    try
    {
      localParcel.writeInterfaceToken("com.google.android.gtalkservice.IImSession");
      mRemote.transact(36, localParcel, null, 1);
      return;
    }
    finally
    {
      localParcel.recycle();
    }
  }
  
  public IChatSession createChatSession(String paramString)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gtalkservice.IImSession");
      localParcel1.writeString(paramString);
      mRemote.transact(22, localParcel1, localParcel2, 0);
      localParcel2.readException();
      paramString = IChatSession.Stub.asInterface(localParcel2.readStrongBinder());
      return paramString;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }
  
  public void createGroupChatSession(String paramString, String[] paramArrayOfString)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gtalkservice.IImSession");
      localParcel1.writeString(paramString);
      localParcel1.writeStringArray(paramArrayOfString);
      mRemote.transact(24, localParcel1, localParcel2, 0);
      localParcel2.readException();
      return;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }
  
  public void declineGroupChatInvitation(String paramString1, String paramString2)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gtalkservice.IImSession");
      localParcel1.writeString(paramString1);
      localParcel1.writeString(paramString2);
      mRemote.transact(26, localParcel1, localParcel2, 0);
      localParcel2.readException();
      return;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }
  
  public void declineSubscriptionRequest(String paramString)
    throws RemoteException
  {
    Parcel localParcel = Parcel.obtain();
    try
    {
      localParcel.writeInterfaceToken("com.google.android.gtalkservice.IImSession");
      localParcel.writeString(paramString);
      mRemote.transact(21, localParcel, null, 1);
      return;
    }
    finally
    {
      localParcel.recycle();
    }
  }
  
  public void editContact(String paramString1, String paramString2, String[] paramArrayOfString)
    throws RemoteException
  {
    Parcel localParcel = Parcel.obtain();
    try
    {
      localParcel.writeInterfaceToken("com.google.android.gtalkservice.IImSession");
      localParcel.writeString(paramString1);
      localParcel.writeString(paramString2);
      localParcel.writeStringArray(paramArrayOfString);
      mRemote.transact(14, localParcel, null, 1);
      return;
    }
    finally
    {
      localParcel.recycle();
    }
  }
  
  public long getAccountId()
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gtalkservice.IImSession");
      mRemote.transact(1, localParcel1, localParcel2, 0);
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
  
  public IChatSession getChatSession(String paramString)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gtalkservice.IImSession");
      localParcel1.writeString(paramString);
      mRemote.transact(23, localParcel1, localParcel2, 0);
      localParcel2.readException();
      paramString = IChatSession.Stub.asInterface(localParcel2.readStrongBinder());
      return paramString;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }
  
  /* Error */
  public ConnectionState getConnectionState()
    throws RemoteException
  {
    // Byte code:
    //   0: invokestatic 30	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   3: astore_2
    //   4: invokestatic 30	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   7: astore_3
    //   8: aload_2
    //   9: ldc 32
    //   11: invokevirtual 36	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   14: aload_0
    //   15: getfield 19	com/google/android/gtalkservice/IImSession$Stub$Proxy:mRemote	Landroid/os/IBinder;
    //   18: bipush 6
    //   20: aload_2
    //   21: aload_3
    //   22: iconst_0
    //   23: invokeinterface 51 5 0
    //   28: pop
    //   29: aload_3
    //   30: invokevirtual 54	android/os/Parcel:readException	()V
    //   33: aload_3
    //   34: invokevirtual 125	android/os/Parcel:readInt	()I
    //   37: ifeq +26 -> 63
    //   40: getstatic 131	com/google/android/gtalkservice/ConnectionState:CREATOR	Landroid/os/Parcelable$Creator;
    //   43: aload_3
    //   44: invokeinterface 137 2 0
    //   49: checkcast 127	com/google/android/gtalkservice/ConnectionState
    //   52: astore_1
    //   53: aload_3
    //   54: invokevirtual 57	android/os/Parcel:recycle	()V
    //   57: aload_2
    //   58: invokevirtual 57	android/os/Parcel:recycle	()V
    //   61: aload_1
    //   62: areturn
    //   63: aconst_null
    //   64: astore_1
    //   65: goto -12 -> 53
    //   68: astore_1
    //   69: aload_3
    //   70: invokevirtual 57	android/os/Parcel:recycle	()V
    //   73: aload_2
    //   74: invokevirtual 57	android/os/Parcel:recycle	()V
    //   77: aload_1
    //   78: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	79	0	this	Proxy
    //   52	13	1	localConnectionState	ConnectionState
    //   68	10	1	localObject	Object
    //   3	71	2	localParcel1	Parcel
    //   7	63	3	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   8	53	68	finally
  }
  
  public String getJid()
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gtalkservice.IImSession");
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
  
  /* Error */
  public Presence getPresence()
    throws RemoteException
  {
    // Byte code:
    //   0: invokestatic 30	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   3: astore_2
    //   4: invokestatic 30	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   7: astore_3
    //   8: aload_2
    //   9: ldc 32
    //   11: invokevirtual 36	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   14: aload_0
    //   15: getfield 19	com/google/android/gtalkservice/IImSession$Stub$Proxy:mRemote	Landroid/os/IBinder;
    //   18: bipush 10
    //   20: aload_2
    //   21: aload_3
    //   22: iconst_0
    //   23: invokeinterface 51 5 0
    //   28: pop
    //   29: aload_3
    //   30: invokevirtual 54	android/os/Parcel:readException	()V
    //   33: aload_3
    //   34: invokevirtual 125	android/os/Parcel:readInt	()I
    //   37: ifeq +26 -> 63
    //   40: getstatic 147	com/google/android/gtalkservice/Presence:CREATOR	Landroid/os/Parcelable$Creator;
    //   43: aload_3
    //   44: invokeinterface 137 2 0
    //   49: checkcast 146	com/google/android/gtalkservice/Presence
    //   52: astore_1
    //   53: aload_3
    //   54: invokevirtual 57	android/os/Parcel:recycle	()V
    //   57: aload_2
    //   58: invokevirtual 57	android/os/Parcel:recycle	()V
    //   61: aload_1
    //   62: areturn
    //   63: aconst_null
    //   64: astore_1
    //   65: goto -12 -> 53
    //   68: astore_1
    //   69: aload_3
    //   70: invokevirtual 57	android/os/Parcel:recycle	()V
    //   73: aload_2
    //   74: invokevirtual 57	android/os/Parcel:recycle	()V
    //   77: aload_1
    //   78: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	79	0	this	Proxy
    //   52	13	1	localPresence	Presence
    //   68	10	1	localObject	Object
    //   3	71	2	localParcel1	Parcel
    //   7	63	3	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   8	53	68	finally
  }
  
  public String getUsername()
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gtalkservice.IImSession");
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
  
  public void goOffRecordInRoom(String paramString, boolean paramBoolean)
    throws RemoteException
  {
    int i = 0;
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gtalkservice.IImSession");
      localParcel1.writeString(paramString);
      if (paramBoolean) {
        i = 1;
      }
      localParcel1.writeInt(i);
      mRemote.transact(34, localParcel1, localParcel2, 0);
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
  public void goOffRecordWithContacts(java.util.List paramList, boolean paramBoolean)
    throws RemoteException
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore_3
    //   2: invokestatic 30	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   5: astore 4
    //   7: aload 4
    //   9: ldc 32
    //   11: invokevirtual 36	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   14: aload 4
    //   16: aload_1
    //   17: invokevirtual 160	android/os/Parcel:writeList	(Ljava/util/List;)V
    //   20: iload_2
    //   21: ifeq +31 -> 52
    //   24: aload 4
    //   26: iload_3
    //   27: invokevirtual 154	android/os/Parcel:writeInt	(I)V
    //   30: aload_0
    //   31: getfield 19	com/google/android/gtalkservice/IImSession$Stub$Proxy:mRemote	Landroid/os/IBinder;
    //   34: bipush 33
    //   36: aload 4
    //   38: aconst_null
    //   39: iconst_1
    //   40: invokeinterface 51 5 0
    //   45: pop
    //   46: aload 4
    //   48: invokevirtual 57	android/os/Parcel:recycle	()V
    //   51: return
    //   52: iconst_0
    //   53: istore_3
    //   54: goto -30 -> 24
    //   57: astore_1
    //   58: aload 4
    //   60: invokevirtual 57	android/os/Parcel:recycle	()V
    //   63: aload_1
    //   64: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	65	0	this	Proxy
    //   0	65	1	paramList	java.util.List
    //   0	65	2	paramBoolean	boolean
    //   1	53	3	i	int
    //   5	54	4	localParcel	Parcel
    // Exception table:
    //   from	to	target	type
    //   7	20	57	finally
    //   24	46	57	finally
  }
  
  public void hideContact(String paramString)
    throws RemoteException
  {
    Parcel localParcel = Parcel.obtain();
    try
    {
      localParcel.writeInterfaceToken("com.google.android.gtalkservice.IImSession");
      localParcel.writeString(paramString);
      mRemote.transact(18, localParcel, null, 1);
      return;
    }
    finally
    {
      localParcel.recycle();
    }
  }
  
  public void inviteContactsToGroupchat(String paramString, String[] paramArrayOfString)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gtalkservice.IImSession");
      localParcel1.writeString(paramString);
      localParcel1.writeStringArray(paramArrayOfString);
      mRemote.transact(46, localParcel1, localParcel2, 0);
      localParcel2.readException();
      return;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }
  
  public boolean isOffRecordWithContact(String paramString)
    throws RemoteException
  {
    boolean bool = false;
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gtalkservice.IImSession");
      localParcel1.writeString(paramString);
      mRemote.transact(35, localParcel1, localParcel2, 0);
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
  
  public void joinGroupChatSession(String paramString1, String paramString2, String paramString3)
    throws RemoteException
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gtalkservice.IImSession");
      localParcel1.writeString(paramString1);
      localParcel1.writeString(paramString2);
      localParcel1.writeString(paramString3);
      mRemote.transact(25, localParcel1, localParcel2, 0);
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
  public void login(String paramString, boolean paramBoolean)
    throws RemoteException
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore_3
    //   2: invokestatic 30	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   5: astore 4
    //   7: aload 4
    //   9: ldc 32
    //   11: invokevirtual 36	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   14: aload 4
    //   16: aload_1
    //   17: invokevirtual 63	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   20: iload_2
    //   21: ifeq +30 -> 51
    //   24: aload 4
    //   26: iload_3
    //   27: invokevirtual 154	android/os/Parcel:writeInt	(I)V
    //   30: aload_0
    //   31: getfield 19	com/google/android/gtalkservice/IImSession$Stub$Proxy:mRemote	Landroid/os/IBinder;
    //   34: iconst_4
    //   35: aload 4
    //   37: aconst_null
    //   38: iconst_1
    //   39: invokeinterface 51 5 0
    //   44: pop
    //   45: aload 4
    //   47: invokevirtual 57	android/os/Parcel:recycle	()V
    //   50: return
    //   51: iconst_0
    //   52: istore_3
    //   53: goto -29 -> 24
    //   56: astore_1
    //   57: aload 4
    //   59: invokevirtual 57	android/os/Parcel:recycle	()V
    //   62: aload_1
    //   63: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	64	0	this	Proxy
    //   0	64	1	paramString	String
    //   0	64	2	paramBoolean	boolean
    //   1	52	3	i	int
    //   5	53	4	localParcel	Parcel
    // Exception table:
    //   from	to	target	type
    //   7	20	56	finally
    //   24	45	56	finally
  }
  
  public void logout()
    throws RemoteException
  {
    Parcel localParcel = Parcel.obtain();
    try
    {
      localParcel.writeInterfaceToken("com.google.android.gtalkservice.IImSession");
      mRemote.transact(5, localParcel, null, 1);
      return;
    }
    finally
    {
      localParcel.recycle();
    }
  }
  
  public void pinContact(String paramString)
    throws RemoteException
  {
    Parcel localParcel = Parcel.obtain();
    try
    {
      localParcel.writeInterfaceToken("com.google.android.gtalkservice.IImSession");
      localParcel.writeString(paramString);
      mRemote.transact(17, localParcel, null, 1);
      return;
    }
    finally
    {
      localParcel.recycle();
    }
  }
  
  /* Error */
  public void pruneOldChatSessions(long paramLong1, long paramLong2, long paramLong3, boolean paramBoolean)
    throws RemoteException
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore 8
    //   3: invokestatic 30	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   6: astore 9
    //   8: aload 9
    //   10: ldc 32
    //   12: invokevirtual 36	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   15: aload 9
    //   17: lload_1
    //   18: invokevirtual 175	android/os/Parcel:writeLong	(J)V
    //   21: aload 9
    //   23: lload_3
    //   24: invokevirtual 175	android/os/Parcel:writeLong	(J)V
    //   27: aload 9
    //   29: lload 5
    //   31: invokevirtual 175	android/os/Parcel:writeLong	(J)V
    //   34: iload 7
    //   36: ifeq +32 -> 68
    //   39: aload 9
    //   41: iload 8
    //   43: invokevirtual 154	android/os/Parcel:writeInt	(I)V
    //   46: aload_0
    //   47: getfield 19	com/google/android/gtalkservice/IImSession$Stub$Proxy:mRemote	Landroid/os/IBinder;
    //   50: bipush 37
    //   52: aload 9
    //   54: aconst_null
    //   55: iconst_1
    //   56: invokeinterface 51 5 0
    //   61: pop
    //   62: aload 9
    //   64: invokevirtual 57	android/os/Parcel:recycle	()V
    //   67: return
    //   68: iconst_0
    //   69: istore 8
    //   71: goto -32 -> 39
    //   74: astore 10
    //   76: aload 9
    //   78: invokevirtual 57	android/os/Parcel:recycle	()V
    //   81: aload 10
    //   83: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	84	0	this	Proxy
    //   0	84	1	paramLong1	long
    //   0	84	3	paramLong2	long
    //   0	84	5	paramLong3	long
    //   0	84	7	paramBoolean	boolean
    //   1	69	8	i	int
    //   6	71	9	localParcel	Parcel
    //   74	8	10	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   8	34	74	finally
    //   39	62	74	finally
  }
  
  public void queryJingleInfo()
    throws RemoteException
  {
    Parcel localParcel = Parcel.obtain();
    try
    {
      localParcel.writeInterfaceToken("com.google.android.gtalkservice.IImSession");
      mRemote.transact(41, localParcel, null, 1);
      return;
    }
    finally
    {
      localParcel.recycle();
    }
  }
  
  /* Error */
  public void removeConnectionStateListener(IConnectionStateListener paramIConnectionStateListener)
    throws RemoteException
  {
    // Byte code:
    //   0: invokestatic 30	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   3: astore_2
    //   4: invokestatic 30	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   7: astore_3
    //   8: aload_2
    //   9: ldc 32
    //   11: invokevirtual 36	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   14: aload_1
    //   15: ifnull +43 -> 58
    //   18: aload_1
    //   19: invokeinterface 42 1 0
    //   24: astore_1
    //   25: aload_2
    //   26: aload_1
    //   27: invokevirtual 45	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   30: aload_0
    //   31: getfield 19	com/google/android/gtalkservice/IImSession$Stub$Proxy:mRemote	Landroid/os/IBinder;
    //   34: bipush 8
    //   36: aload_2
    //   37: aload_3
    //   38: iconst_0
    //   39: invokeinterface 51 5 0
    //   44: pop
    //   45: aload_3
    //   46: invokevirtual 54	android/os/Parcel:readException	()V
    //   49: aload_3
    //   50: invokevirtual 57	android/os/Parcel:recycle	()V
    //   53: aload_2
    //   54: invokevirtual 57	android/os/Parcel:recycle	()V
    //   57: return
    //   58: aconst_null
    //   59: astore_1
    //   60: goto -35 -> 25
    //   63: astore_1
    //   64: aload_3
    //   65: invokevirtual 57	android/os/Parcel:recycle	()V
    //   68: aload_2
    //   69: invokevirtual 57	android/os/Parcel:recycle	()V
    //   72: aload_1
    //   73: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	74	0	this	Proxy
    //   0	74	1	paramIConnectionStateListener	IConnectionStateListener
    //   3	66	2	localParcel1	Parcel
    //   7	58	3	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   8	14	63	finally
    //   18	25	63	finally
    //   25	49	63	finally
  }
  
  public void removeContact(String paramString)
    throws RemoteException
  {
    Parcel localParcel = Parcel.obtain();
    try
    {
      localParcel.writeInterfaceToken("com.google.android.gtalkservice.IImSession");
      localParcel.writeString(paramString);
      mRemote.transact(15, localParcel, null, 1);
      return;
    }
    finally
    {
      localParcel.recycle();
    }
  }
  
  /* Error */
  public void removeGroupChatInvitationListener(IGroupChatInvitationListener paramIGroupChatInvitationListener)
    throws RemoteException
  {
    // Byte code:
    //   0: invokestatic 30	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   3: astore_2
    //   4: invokestatic 30	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   7: astore_3
    //   8: aload_2
    //   9: ldc 32
    //   11: invokevirtual 36	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   14: aload_1
    //   15: ifnull +43 -> 58
    //   18: aload_1
    //   19: invokeinterface 72 1 0
    //   24: astore_1
    //   25: aload_2
    //   26: aload_1
    //   27: invokevirtual 45	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   30: aload_0
    //   31: getfield 19	com/google/android/gtalkservice/IImSession$Stub$Proxy:mRemote	Landroid/os/IBinder;
    //   34: bipush 28
    //   36: aload_2
    //   37: aload_3
    //   38: iconst_0
    //   39: invokeinterface 51 5 0
    //   44: pop
    //   45: aload_3
    //   46: invokevirtual 54	android/os/Parcel:readException	()V
    //   49: aload_3
    //   50: invokevirtual 57	android/os/Parcel:recycle	()V
    //   53: aload_2
    //   54: invokevirtual 57	android/os/Parcel:recycle	()V
    //   57: return
    //   58: aconst_null
    //   59: astore_1
    //   60: goto -35 -> 25
    //   63: astore_1
    //   64: aload_3
    //   65: invokevirtual 57	android/os/Parcel:recycle	()V
    //   68: aload_2
    //   69: invokevirtual 57	android/os/Parcel:recycle	()V
    //   72: aload_1
    //   73: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	74	0	this	Proxy
    //   0	74	1	paramIGroupChatInvitationListener	IGroupChatInvitationListener
    //   3	66	2	localParcel1	Parcel
    //   7	58	3	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   8	14	63	finally
    //   18	25	63	finally
    //   25	49	63	finally
  }
  
  /* Error */
  public void removeRemoteChatListener(IChatListener paramIChatListener)
    throws RemoteException
  {
    // Byte code:
    //   0: invokestatic 30	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   3: astore_2
    //   4: invokestatic 30	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   7: astore_3
    //   8: aload_2
    //   9: ldc 32
    //   11: invokevirtual 36	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   14: aload_1
    //   15: ifnull +43 -> 58
    //   18: aload_1
    //   19: invokeinterface 77 1 0
    //   24: astore_1
    //   25: aload_2
    //   26: aload_1
    //   27: invokevirtual 45	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   30: aload_0
    //   31: getfield 19	com/google/android/gtalkservice/IImSession$Stub$Proxy:mRemote	Landroid/os/IBinder;
    //   34: bipush 30
    //   36: aload_2
    //   37: aload_3
    //   38: iconst_0
    //   39: invokeinterface 51 5 0
    //   44: pop
    //   45: aload_3
    //   46: invokevirtual 54	android/os/Parcel:readException	()V
    //   49: aload_3
    //   50: invokevirtual 57	android/os/Parcel:recycle	()V
    //   53: aload_2
    //   54: invokevirtual 57	android/os/Parcel:recycle	()V
    //   57: return
    //   58: aconst_null
    //   59: astore_1
    //   60: goto -35 -> 25
    //   63: astore_1
    //   64: aload_3
    //   65: invokevirtual 57	android/os/Parcel:recycle	()V
    //   68: aload_2
    //   69: invokevirtual 57	android/os/Parcel:recycle	()V
    //   72: aload_1
    //   73: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	74	0	this	Proxy
    //   0	74	1	paramIChatListener	IChatListener
    //   3	66	2	localParcel1	Parcel
    //   7	58	3	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   8	14	63	finally
    //   18	25	63	finally
    //   25	49	63	finally
  }
  
  /* Error */
  public void removeRemoteJingleInfoStanzaListener(IJingleInfoStanzaListener paramIJingleInfoStanzaListener)
    throws RemoteException
  {
    // Byte code:
    //   0: invokestatic 30	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   3: astore_2
    //   4: invokestatic 30	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   7: astore_3
    //   8: aload_2
    //   9: ldc 32
    //   11: invokevirtual 36	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   14: aload_1
    //   15: ifnull +43 -> 58
    //   18: aload_1
    //   19: invokeinterface 82 1 0
    //   24: astore_1
    //   25: aload_2
    //   26: aload_1
    //   27: invokevirtual 45	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   30: aload_0
    //   31: getfield 19	com/google/android/gtalkservice/IImSession$Stub$Proxy:mRemote	Landroid/os/IBinder;
    //   34: bipush 43
    //   36: aload_2
    //   37: aload_3
    //   38: iconst_0
    //   39: invokeinterface 51 5 0
    //   44: pop
    //   45: aload_3
    //   46: invokevirtual 54	android/os/Parcel:readException	()V
    //   49: aload_3
    //   50: invokevirtual 57	android/os/Parcel:recycle	()V
    //   53: aload_2
    //   54: invokevirtual 57	android/os/Parcel:recycle	()V
    //   57: return
    //   58: aconst_null
    //   59: astore_1
    //   60: goto -35 -> 25
    //   63: astore_1
    //   64: aload_3
    //   65: invokevirtual 57	android/os/Parcel:recycle	()V
    //   68: aload_2
    //   69: invokevirtual 57	android/os/Parcel:recycle	()V
    //   72: aload_1
    //   73: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	74	0	this	Proxy
    //   0	74	1	paramIJingleInfoStanzaListener	IJingleInfoStanzaListener
    //   3	66	2	localParcel1	Parcel
    //   7	58	3	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   8	14	63	finally
    //   18	25	63	finally
    //   25	49	63	finally
  }
  
  /* Error */
  public void removeRemoteRosterListener(IRosterListener paramIRosterListener)
    throws RemoteException
  {
    // Byte code:
    //   0: invokestatic 30	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   3: astore_2
    //   4: invokestatic 30	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   7: astore_3
    //   8: aload_2
    //   9: ldc 32
    //   11: invokevirtual 36	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   14: aload_1
    //   15: ifnull +43 -> 58
    //   18: aload_1
    //   19: invokeinterface 87 1 0
    //   24: astore_1
    //   25: aload_2
    //   26: aload_1
    //   27: invokevirtual 45	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   30: aload_0
    //   31: getfield 19	com/google/android/gtalkservice/IImSession$Stub$Proxy:mRemote	Landroid/os/IBinder;
    //   34: bipush 32
    //   36: aload_2
    //   37: aload_3
    //   38: iconst_0
    //   39: invokeinterface 51 5 0
    //   44: pop
    //   45: aload_3
    //   46: invokevirtual 54	android/os/Parcel:readException	()V
    //   49: aload_3
    //   50: invokevirtual 57	android/os/Parcel:recycle	()V
    //   53: aload_2
    //   54: invokevirtual 57	android/os/Parcel:recycle	()V
    //   57: return
    //   58: aconst_null
    //   59: astore_1
    //   60: goto -35 -> 25
    //   63: astore_1
    //   64: aload_3
    //   65: invokevirtual 57	android/os/Parcel:recycle	()V
    //   68: aload_2
    //   69: invokevirtual 57	android/os/Parcel:recycle	()V
    //   72: aload_1
    //   73: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	74	0	this	Proxy
    //   0	74	1	paramIRosterListener	IRosterListener
    //   3	66	2	localParcel1	Parcel
    //   7	58	3	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   8	14	63	finally
    //   18	25	63	finally
    //   25	49	63	finally
  }
  
  /* Error */
  public void removeRemoteSessionStanzaListener(ISessionStanzaListener paramISessionStanzaListener)
    throws RemoteException
  {
    // Byte code:
    //   0: invokestatic 30	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   3: astore_2
    //   4: invokestatic 30	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   7: astore_3
    //   8: aload_2
    //   9: ldc 32
    //   11: invokevirtual 36	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   14: aload_1
    //   15: ifnull +43 -> 58
    //   18: aload_1
    //   19: invokeinterface 92 1 0
    //   24: astore_1
    //   25: aload_2
    //   26: aload_1
    //   27: invokevirtual 45	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   30: aload_0
    //   31: getfield 19	com/google/android/gtalkservice/IImSession$Stub$Proxy:mRemote	Landroid/os/IBinder;
    //   34: bipush 40
    //   36: aload_2
    //   37: aload_3
    //   38: iconst_0
    //   39: invokeinterface 51 5 0
    //   44: pop
    //   45: aload_3
    //   46: invokevirtual 54	android/os/Parcel:readException	()V
    //   49: aload_3
    //   50: invokevirtual 57	android/os/Parcel:recycle	()V
    //   53: aload_2
    //   54: invokevirtual 57	android/os/Parcel:recycle	()V
    //   57: return
    //   58: aconst_null
    //   59: astore_1
    //   60: goto -35 -> 25
    //   63: astore_1
    //   64: aload_3
    //   65: invokevirtual 57	android/os/Parcel:recycle	()V
    //   68: aload_2
    //   69: invokevirtual 57	android/os/Parcel:recycle	()V
    //   72: aload_1
    //   73: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	74	0	this	Proxy
    //   0	74	1	paramISessionStanzaListener	ISessionStanzaListener
    //   3	66	2	localParcel1	Parcel
    //   7	58	3	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   8	14	63	finally
    //   18	25	63	finally
    //   25	49	63	finally
  }
  
  public void requestBatchedBuddyPresence()
    throws RemoteException
  {
    Parcel localParcel = Parcel.obtain();
    try
    {
      localParcel.writeInterfaceToken("com.google.android.gtalkservice.IImSession");
      mRemote.transact(44, localParcel, null, 1);
      return;
    }
    finally
    {
      localParcel.recycle();
    }
  }
  
  public void sendCallPerfStatsStanza(String paramString)
    throws RemoteException
  {
    Parcel localParcel = Parcel.obtain();
    try
    {
      localParcel.writeInterfaceToken("com.google.android.gtalkservice.IImSession");
      localParcel.writeString(paramString);
      mRemote.transact(45, localParcel, null, 1);
      return;
    }
    finally
    {
      localParcel.recycle();
    }
  }
  
  public void sendSessionStanza(String paramString)
    throws RemoteException
  {
    Parcel localParcel = Parcel.obtain();
    try
    {
      localParcel.writeInterfaceToken("com.google.android.gtalkservice.IImSession");
      localParcel.writeString(paramString);
      mRemote.transact(38, localParcel, null, 1);
      return;
    }
    finally
    {
      localParcel.recycle();
    }
  }
  
  /* Error */
  public void setPresence(Presence paramPresence)
    throws RemoteException
  {
    // Byte code:
    //   0: invokestatic 30	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   3: astore_2
    //   4: invokestatic 30	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   7: astore_3
    //   8: aload_2
    //   9: ldc 32
    //   11: invokevirtual 36	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   14: aload_1
    //   15: ifnull +42 -> 57
    //   18: aload_2
    //   19: iconst_1
    //   20: invokevirtual 154	android/os/Parcel:writeInt	(I)V
    //   23: aload_1
    //   24: aload_2
    //   25: iconst_0
    //   26: invokevirtual 192	com/google/android/gtalkservice/Presence:writeToParcel	(Landroid/os/Parcel;I)V
    //   29: aload_0
    //   30: getfield 19	com/google/android/gtalkservice/IImSession$Stub$Proxy:mRemote	Landroid/os/IBinder;
    //   33: bipush 9
    //   35: aload_2
    //   36: aload_3
    //   37: iconst_0
    //   38: invokeinterface 51 5 0
    //   43: pop
    //   44: aload_3
    //   45: invokevirtual 54	android/os/Parcel:readException	()V
    //   48: aload_3
    //   49: invokevirtual 57	android/os/Parcel:recycle	()V
    //   52: aload_2
    //   53: invokevirtual 57	android/os/Parcel:recycle	()V
    //   56: return
    //   57: aload_2
    //   58: iconst_0
    //   59: invokevirtual 154	android/os/Parcel:writeInt	(I)V
    //   62: goto -33 -> 29
    //   65: astore_1
    //   66: aload_3
    //   67: invokevirtual 57	android/os/Parcel:recycle	()V
    //   70: aload_2
    //   71: invokevirtual 57	android/os/Parcel:recycle	()V
    //   74: aload_1
    //   75: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	76	0	this	Proxy
    //   0	76	1	paramPresence	Presence
    //   3	68	2	localParcel1	Parcel
    //   7	60	3	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   8	14	65	finally
    //   18	29	65	finally
    //   29	48	65	finally
    //   57	62	65	finally
  }
  
  /* Error */
  public void uploadAvatar(android.graphics.Bitmap paramBitmap)
    throws RemoteException
  {
    // Byte code:
    //   0: invokestatic 30	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   3: astore_2
    //   4: aload_2
    //   5: ldc 32
    //   7: invokevirtual 36	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   10: aload_1
    //   11: ifnull +34 -> 45
    //   14: aload_2
    //   15: iconst_1
    //   16: invokevirtual 154	android/os/Parcel:writeInt	(I)V
    //   19: aload_1
    //   20: aload_2
    //   21: iconst_0
    //   22: invokevirtual 197	android/graphics/Bitmap:writeToParcel	(Landroid/os/Parcel;I)V
    //   25: aload_0
    //   26: getfield 19	com/google/android/gtalkservice/IImSession$Stub$Proxy:mRemote	Landroid/os/IBinder;
    //   29: bipush 11
    //   31: aload_2
    //   32: aconst_null
    //   33: iconst_1
    //   34: invokeinterface 51 5 0
    //   39: pop
    //   40: aload_2
    //   41: invokevirtual 57	android/os/Parcel:recycle	()V
    //   44: return
    //   45: aload_2
    //   46: iconst_0
    //   47: invokevirtual 154	android/os/Parcel:writeInt	(I)V
    //   50: goto -25 -> 25
    //   53: astore_1
    //   54: aload_2
    //   55: invokevirtual 57	android/os/Parcel:recycle	()V
    //   58: aload_1
    //   59: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	60	0	this	Proxy
    //   0	60	1	paramBitmap	android.graphics.Bitmap
    //   3	52	2	localParcel	Parcel
    // Exception table:
    //   from	to	target	type
    //   4	10	53	finally
    //   14	25	53	finally
    //   25	40	53	finally
    //   45	50	53	finally
  }
  
  public void uploadAvatarFromDb()
    throws RemoteException
  {
    Parcel localParcel = Parcel.obtain();
    try
    {
      localParcel.writeInterfaceToken("com.google.android.gtalkservice.IImSession");
      mRemote.transact(12, localParcel, null, 1);
      return;
    }
    finally
    {
      localParcel.recycle();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gtalkservice.IImSession.Stub.Proxy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */