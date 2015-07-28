package com.google.android.talk;

import android.app.Activity;

class SelfStatusCursor$1
  implements TalkApp.SelfAvatarReadyRunnable
{
  SelfStatusCursor$1(SelfStatusCursor paramSelfStatusCursor, Runnable paramRunnable) {}
  
  public void run(DatabaseUtils.AvatarData paramAvatarData)
  {
    SelfStatusCursor.access$002(this$0, paramAvatarData);
    SelfStatusCursor.access$100(this$0).runOnUiThread(val$update);
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.SelfStatusCursor.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */