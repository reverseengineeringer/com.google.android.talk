package com.google.android.videochat;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Handler;
import android.util.Log;
import com.google.android.gsf.Gservices;

class NetworkConnectionManager
{
  private ConnectivityManager mConnectivityManager;
  private Context mContext;
  private Handler mHandler;
  private MobileHipriRunnable mMobileHipriRunnable;
  private boolean mRequestHipri;
  
  public NetworkConnectionManager(Context paramContext)
  {
    mContext = paramContext;
    mHandler = new Handler();
    mConnectivityManager = ((ConnectivityManager)mContext.getSystemService("connectivity"));
  }
  
  private void log(String paramString)
  {
    Log.d("vclib:NetworkConnectionManager", "[NetConMgr] " + paramString);
  }
  
  private void requestMobileHipriNetwork()
  {
    try
    {
      if (!mRequestHipri) {
        return;
      }
      int i = mConnectivityManager.startUsingNetworkFeature(0, "enableHIPRI");
      log(">>> requestMobileHipriNetwork: enableHIPRI result=" + i);
      if (mMobileHipriRunnable == null) {
        mMobileHipriRunnable = new MobileHipriRunnable();
      }
      mHandler.postDelayed(mMobileHipriRunnable, 25000L);
      return;
    }
    finally {}
  }
  
  public void startUsingMobileHipriIfOnMobileNetwork()
  {
    NetworkInfo localNetworkInfo = mConnectivityManager.getActiveNetworkInfo();
    int i;
    if (localNetworkInfo != null)
    {
      i = localNetworkInfo.getType();
      log("startUsingMobileHipriIfOnMobileNetwork: " + localNetworkInfo);
      switch (i)
      {
      }
    }
    do
    {
      return;
      i = -1;
      break;
    } while (!Gservices.getBoolean(mContext.getContentResolver(), "gtalk_use_hipri", true));
    try
    {
      mRequestHipri = true;
      requestMobileHipriNetwork();
      return;
    }
    finally {}
  }
  
  public void stopUsingMobileHipri()
  {
    try
    {
      log("stopUsingMobileHipri: mRequestHipri=" + mRequestHipri);
      if (mRequestHipri)
      {
        mRequestHipri = false;
        if (mMobileHipriRunnable != null)
        {
          mHandler.removeCallbacks(mMobileHipriRunnable);
          mMobileHipriRunnable = null;
        }
        return;
      }
      return;
    }
    finally {}
  }
  
  public class MobileHipriRunnable
    implements Runnable
  {
    public MobileHipriRunnable() {}
    
    public void run()
    {
      NetworkConnectionManager.this.requestMobileHipriNetwork();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.videochat.NetworkConnectionManager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */