package com.google.android.talk;

import android.os.Handler;

abstract class TalkServiceState$PendingCallback
  implements Runnable
{
  private final Handler mTarget;
  
  TalkServiceState$PendingCallback(Handler paramHandler)
  {
    mTarget = paramHandler;
  }
  
  public Handler getTarget()
  {
    return mTarget;
  }
  
  public void post()
  {
    getTarget().post(this);
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.TalkServiceState.PendingCallback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */