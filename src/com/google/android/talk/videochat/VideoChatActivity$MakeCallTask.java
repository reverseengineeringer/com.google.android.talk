package com.google.android.talk.videochat;

import android.os.AsyncTask;
import com.google.android.talk.DatabaseUtils;
import com.google.android.videochat.CallSession;

class VideoChatActivity$MakeCallTask
  extends AsyncTask<Long, Void, String>
{
  private VideoChatActivity$MakeCallTask(VideoChatActivity paramVideoChatActivity) {}
  
  protected String doInBackground(Long... paramVarArgs)
  {
    return DatabaseUtils.getUsernameForAccountId(this$0.getContentResolver(), paramVarArgs[0]);
  }
  
  protected void onPostExecute(String paramString)
  {
    if (VideoChatActivity.access$5800(this$0).initiateVideoCall(VideoChatActivity.access$6400(this$0), paramString, TalkOngoingNotificationFactory.getInstance(this$0)))
    {
      VideoChatActivity.access$2300(this$0, "calling " + VideoChatActivity.access$6400(this$0));
      return;
    }
    VideoChatActivity.access$2300(this$0, "Call failed");
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.videochat.VideoChatActivity.MakeCallTask
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */