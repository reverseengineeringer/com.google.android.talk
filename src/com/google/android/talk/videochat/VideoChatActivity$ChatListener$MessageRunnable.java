package com.google.android.talk.videochat;

import android.widget.LinearLayout;
import com.google.android.talk.StringUtils;

class VideoChatActivity$ChatListener$MessageRunnable
  implements Runnable
{
  private final VideoChatActivity mActivity;
  private String mBody;
  private String mFullJid;
  
  public VideoChatActivity$ChatListener$MessageRunnable(VideoChatActivity paramVideoChatActivity, String paramString1, String paramString2)
  {
    mActivity = paramVideoChatActivity;
    mFullJid = paramString1;
    mBody = paramString2;
  }
  
  public void run()
  {
    String str = StringUtils.parseBareAddress(mFullJid);
    if ((VideoChatActivity.access$1100(mActivity).equals(str)) && (VideoChatActivity.access$1200(mActivity)))
    {
      VideoChatActivity.access$1300(mActivity, mBody);
      if (VideoChatActivity.access$1400(mActivity).getVisibility() == 8) {
        VideoChatActivity.access$1400(mActivity).setVisibility(0);
      }
      VideoChatActivity.access$1500(mActivity);
      VideoChatActivity.access$1600(mActivity, 5000L);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.videochat.VideoChatActivity.ChatListener.MessageRunnable
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */