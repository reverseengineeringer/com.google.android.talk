package com.google.android.talk.fragments;

import android.os.Handler;
import android.util.Log;
import com.google.android.gtalkservice.ConnectionError;
import com.google.android.gtalkservice.ConnectionState;
import com.google.android.gtalkservice.IConnectionStateListener.Stub;

class BuddyListFragment$ConnectionStateListener
  extends IConnectionStateListener.Stub
{
  BuddyListFragment mFragment;
  
  public BuddyListFragment$ConnectionStateListener(BuddyListFragment paramBuddyListFragment)
  {
    mFragment = paramBuddyListFragment;
  }
  
  public void clearRefs()
  {
    mFragment = null;
  }
  
  public void connectionStateChanged(ConnectionState paramConnectionState, ConnectionError paramConnectionError, long paramLong, String paramString)
  {
    for (;;)
    {
      try
      {
        paramConnectionError = mFragment;
        if (paramConnectionError == null) {
          return;
        }
        switch (paramConnectionState.getState())
        {
        case 3: 
          mHandler.post(new Runnable()
          {
            public void run()
            {
              if (mFragment == null) {
                return;
              }
              BuddyListFragment.access$600(mFragment, false);
            }
          });
          return;
        }
      }
      catch (RuntimeException paramConnectionState)
      {
        Log.e("talk", "BuddyListFragment.connectionStateChanged error", paramConnectionState);
        throw paramConnectionState;
      }
      mHandler.post(new Runnable()
      {
        public void run()
        {
          if (mFragment == null) {
            return;
          }
          BuddyListFragment.access$600(mFragment, true);
        }
      });
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.fragments.BuddyListFragment.ConnectionStateListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */