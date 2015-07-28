package com.google.android.talk;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;

class AlertNotificationFullScreenActivity$5
  implements DialogInterface.OnCancelListener
{
  AlertNotificationFullScreenActivity$5(AlertNotificationFullScreenActivity paramAlertNotificationFullScreenActivity) {}
  
  public void onCancel(DialogInterface paramDialogInterface)
  {
    if (this$0.mIsIncomingCall) {
      AlertNotificationFullScreenActivity.access$500(this$0, this$0.mAccountId, this$0.mRemoteJid);
    }
    TalkApp.LOGD("talk", "[AlertNotificationFullScreen] onCancel: dismiss");
    AlertNotificationFullScreenActivity.access$600(this$0);
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.AlertNotificationFullScreenActivity.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */