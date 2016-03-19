package com.google.android.libraries.social.async;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;

public final class BackgroundTaskService
  extends Service
{
  public IBinder onBind(Intent paramIntent)
  {
    return null;
  }
  
  public int onStartCommand(Intent paramIntent, int paramInt1, int paramInt2)
  {
    return 2;
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.social.async.BackgroundTaskService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */