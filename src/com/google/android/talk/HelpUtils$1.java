package com.google.android.talk;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import android.util.Log;

final class HelpUtils$1
  implements ServiceConnection
{
  public void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    try
    {
      paramIBinder.transact(1, Parcel.obtain(), null, 0);
      return;
    }
    catch (RemoteException paramComponentName)
    {
      Log.d("ServiceConn", paramComponentName.getMessage());
    }
  }
  
  public void onServiceDisconnected(ComponentName paramComponentName) {}
}

/* Location:
 * Qualified Name:     com.google.android.talk.HelpUtils.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */