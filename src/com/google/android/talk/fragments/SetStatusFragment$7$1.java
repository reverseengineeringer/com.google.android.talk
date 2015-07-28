package com.google.android.talk.fragments;

import com.google.android.talk.TalkApp;

class SetStatusFragment$7$1
  implements Runnable
{
  SetStatusFragment$7$1(SetStatusFragment.7 param7) {}
  
  public void run()
  {
    SetStatusFragment.access$1800(this$1.this$0).clearSelfAvatarCache();
    SetStatusFragment.access$2100(this$1.this$0).updateRoster();
    SetStatusFragment.access$500(this$1.this$0);
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.fragments.SetStatusFragment.7.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */