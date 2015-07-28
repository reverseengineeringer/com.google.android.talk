package com.google.android.talk.fragments;

import android.app.Activity;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gtalkservice.ConnectionError;
import com.google.android.gtalkservice.ConnectionState;
import com.google.android.gtalkservice.IConnectionStateListener.Stub;

class SetStatusFragment$ConnectionStateListener
  extends IConnectionStateListener.Stub
{
  Activity mActivity;
  SetStatusFragment mFragment;
  
  public SetStatusFragment$ConnectionStateListener(SetStatusFragment paramSetStatusFragment, Activity paramActivity)
  {
    mFragment = paramSetStatusFragment;
    mActivity = paramActivity;
  }
  
  public void clearRefs()
  {
    mFragment = null;
    mActivity = null;
  }
  
  public void connectionStateChanged(ConnectionState paramConnectionState, ConnectionError paramConnectionError, long paramLong, String paramString)
    throws RemoteException
  {
    for (;;)
    {
      try
      {
        paramConnectionError = mFragment;
        paramString = mActivity;
        if (paramConnectionError == null) {
          break label97;
        }
        if (paramString == null) {
          return;
        }
        try
        {
          switch (paramConnectionState.getState())
          {
          case 3: 
            paramString.runOnUiThread(new Runnable()
            {
              public void run()
              {
                if (mFragment == null) {
                  return;
                }
                SetStatusFragment.access$200(mFragment);
              }
            });
            return;
          }
        }
        finally {}
        paramString.runOnUiThread(new Runnable()
        {
          public void run()
          {
            if (mFragment == null) {
              return;
            }
            SetStatusFragment.access$100(mFragment);
          }
        });
      }
      catch (RuntimeException paramConnectionState)
      {
        Log.e("talk", "SetStatusFragment.connectionStateChanged error", paramConnectionState);
        throw paramConnectionState;
      }
      continue;
      label97:
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.fragments.SetStatusFragment.ConnectionStateListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */