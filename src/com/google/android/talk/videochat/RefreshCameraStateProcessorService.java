package com.google.android.talk.videochat;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.util.Log;
import com.google.android.talk.FeatureManager;

public class RefreshCameraStateProcessorService
  extends Service
{
  private void onBootCompleted(final int paramInt)
  {
    Log.i("talk", "Refresh the supported camera state");
    FeatureManager.clearDeviceFeatures(this);
    FeatureManager.setAvailableFeaturesAllAccounts(this, new Runnable()
    {
      public void run()
      {
        stopSelf(paramInt);
      }
    });
  }
  
  public IBinder onBind(Intent paramIntent)
  {
    return null;
  }
  
  public int onStartCommand(Intent paramIntent, int paramInt1, int paramInt2)
  {
    if ("android.intent.action.BOOT_COMPLETED".equals(((Intent)paramIntent.getParcelableExtra("android.intent.extra.INTENT")).getAction())) {
      onBootCompleted(paramInt2);
    }
    return 3;
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.videochat.RefreshCameraStateProcessorService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */