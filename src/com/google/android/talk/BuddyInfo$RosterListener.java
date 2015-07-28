package com.google.android.talk;

import android.os.RemoteException;
import com.google.android.gtalkservice.IRosterListener.Stub;

class BuddyInfo$RosterListener
  extends IRosterListener.Stub
{
  BuddyInfo$RosterListener(BuddyInfo paramBuddyInfo) {}
  
  public void presenceChanged(String paramString)
    throws RemoteException
  {
    BuddyInfo.access$000(this$0);
  }
  
  public void rosterChanged()
    throws RemoteException
  {}
  
  public void selfPresenceChanged()
    throws RemoteException
  {}
}

/* Location:
 * Qualified Name:     com.google.android.talk.BuddyInfo.RosterListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */