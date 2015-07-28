package com.google.android.talk;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

class PublicIntentDispatcher$6
  implements DialogInterface.OnClickListener
{
  PublicIntentDispatcher$6(PublicIntentDispatcher paramPublicIntentDispatcher, Runnable paramRunnable) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    val$confirmRunnable.run();
    paramDialogInterface.dismiss();
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.PublicIntentDispatcher.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */