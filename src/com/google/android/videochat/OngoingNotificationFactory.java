package com.google.android.videochat;

import android.app.Notification;

public abstract interface OngoingNotificationFactory
{
  public abstract void requestOngoingNotification(OngoingNotificationReadyCallback paramOngoingNotificationReadyCallback, String paramString1, String paramString2, boolean paramBoolean);
  
  public static abstract interface OngoingNotificationReadyCallback
  {
    public abstract void onOngoingNotificationReady(Notification paramNotification);
  }
}

/* Location:
 * Qualified Name:     com.google.android.videochat.OngoingNotificationFactory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */