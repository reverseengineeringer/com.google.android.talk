package com.google.android.talk;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

class AlertNotificationFullScreenActivity$4
  implements DialogInterface.OnClickListener
{
  AlertNotificationFullScreenActivity$4(AlertNotificationFullScreenActivity paramAlertNotificationFullScreenActivity) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    switch (paramInt)
    {
    }
    for (;;)
    {
      AlertNotificationFullScreenActivity.access$600(this$0);
      return;
      if (this$0.mIsIncomingCall)
      {
        this$0.acceptCall(this$0.mAccountId, this$0.mRemoteJid);
      }
      else
      {
        AlertNotificationFullScreenActivity.access$400(this$0, "click positive button", this$0.mShowChatIntent);
        this$0.startActivity(this$0.mShowChatIntent);
        continue;
        if (this$0.mIsIncomingCall) {
          AlertNotificationFullScreenActivity.access$500(this$0, this$0.mAccountId, this$0.mRemoteJid);
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.AlertNotificationFullScreenActivity.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */