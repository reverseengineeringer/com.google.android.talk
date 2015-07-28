package com.google.android.talk;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.RemoteException;
import com.google.android.gtalkservice.IImSession;

class SubscriptionScreen$1
  implements DialogInterface.OnClickListener
{
  SubscriptionScreen$1(SubscriptionScreen paramSubscriptionScreen) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    for (;;)
    {
      try
      {
        paramDialogInterface = SubscriptionScreen.access$000(this$0);
        switch (paramInt)
        {
        case -1: 
          this$0.finish();
          return;
        }
      }
      catch (RemoteException paramDialogInterface)
      {
        this$0.finish();
        return;
      }
      paramDialogInterface.approveSubscriptionRequest(SubscriptionScreen.access$100(this$0), SubscriptionScreen.access$200(this$0), null);
      continue;
      paramDialogInterface.declineSubscriptionRequest(SubscriptionScreen.access$100(this$0));
      continue;
      paramDialogInterface.declineSubscriptionRequest(SubscriptionScreen.access$100(this$0));
      paramDialogInterface.blockContact(SubscriptionScreen.access$100(this$0));
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.SubscriptionScreen.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */