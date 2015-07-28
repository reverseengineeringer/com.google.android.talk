package com.google.android.talk;

import android.content.DialogInterface;
import android.content.DialogInterface.OnKeyListener;
import android.view.KeyEvent;
import com.google.android.talk.videochat.RingerService;

class AlertNotificationFullScreenActivity$3
  implements DialogInterface.OnKeyListener
{
  AlertNotificationFullScreenActivity$3(AlertNotificationFullScreenActivity paramAlertNotificationFullScreenActivity) {}
  
  public boolean onKey(DialogInterface paramDialogInterface, int paramInt, KeyEvent paramKeyEvent)
  {
    switch (paramInt)
    {
    }
    do
    {
      return false;
    } while ((paramKeyEvent.isCanceled()) || (!this$0.mIsIncomingCall) || (AlertNotificationFullScreenActivity.access$300(this$0)));
    RingerService.forceStopRinger(this$0);
    AlertNotificationFullScreenActivity.access$302(this$0, true);
    return true;
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.AlertNotificationFullScreenActivity.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */