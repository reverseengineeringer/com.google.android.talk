package com.google.android.gtalkservice;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

class IGroupChatInvitationListener$Stub$Proxy
  implements IGroupChatInvitationListener
{
  private IBinder mRemote;
  
  IGroupChatInvitationListener$Stub$Proxy(IBinder paramIBinder)
  {
    mRemote = paramIBinder;
  }
  
  public IBinder asBinder()
  {
    return mRemote;
  }
  
  public boolean onInvitationReceived(GroupChatInvitation paramGroupChatInvitation)
    throws RemoteException
  {
    boolean bool = true;
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    for (;;)
    {
      try
      {
        localParcel1.writeInterfaceToken("com.google.android.gtalkservice.IGroupChatInvitationListener");
        if (paramGroupChatInvitation != null)
        {
          localParcel1.writeInt(1);
          paramGroupChatInvitation.writeToParcel(localParcel1, 0);
          mRemote.transact(1, localParcel1, localParcel2, 0);
          localParcel2.readException();
          int i = localParcel2.readInt();
          if (i != 0) {
            return bool;
          }
        }
        else
        {
          localParcel1.writeInt(0);
          continue;
        }
        bool = false;
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
 * Qualified Name:     com.google.android.gtalkservice.IGroupChatInvitationListener.Stub.Proxy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */