package com.google.android.talk.fragments;

import android.app.Activity;
import android.graphics.Bitmap;
import com.google.android.talk.DatabaseUtils;
import com.google.android.talk.TalkApp;
import com.google.android.talk.TalkApp.AccountInfo;

class SetStatusFragment$7
  implements Runnable
{
  SetStatusFragment$7(SetStatusFragment paramSetStatusFragment, Bitmap paramBitmap) {}
  
  public void run()
  {
    DatabaseUtils.saveAvatar(SetStatusFragment.access$1900(this$0).getContentResolver(), access$300this$0).username, access$300this$0).accountId, val$avatar);
    if (SetStatusFragment.access$2000(this$0)) {
      SetStatusFragment.access$1502(this$0, null);
    }
    SetStatusFragment.access$1900(this$0).runOnUiThread(new Runnable()
    {
      public void run()
      {
        SetStatusFragment.access$1800(this$0).clearSelfAvatarCache();
        SetStatusFragment.access$2100(this$0).updateRoster();
        SetStatusFragment.access$500(this$0);
      }
    });
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.fragments.SetStatusFragment.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */