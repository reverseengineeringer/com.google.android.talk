package com.google.android.talk.videochat;

import com.google.android.talk.StringUtils;
import com.google.android.talk.TalkApp;
import com.google.android.videochat.CallState;
import com.google.android.videochat.CallStateClient;

class VideoChatActivity$LocalCallStateClient
  extends CallStateClient
{
  public boolean mCallStateClientListening = false;
  public Object mCallStateClientLock = new Object();
  
  public VideoChatActivity$LocalCallStateClient(VideoChatActivity paramVideoChatActivity)
  {
    super(paramVideoChatActivity);
  }
  
  public void onCallStateUpdate(String paramString, CallState paramCallState, boolean paramBoolean, Object paramObject)
  {
    if (!paramString.equals(VideoChatActivity.access$1100(this$0))) {}
    do
    {
      return;
      VideoChatActivity.access$1802(this$0, mute);
      VideoChatActivity.access$102(this$0, secure);
      VideoChatActivity.access$1902(this$0, audioDeviceState);
      VideoChatActivity.access$2002(this$0, availableAudioDevices);
      VideoChatActivity.access$2100(this$0);
      switch (libjingleCallState)
      {
      case 2: 
      case 7: 
      case 5: 
      case 6: 
      case 9: 
      default: 
        return;
      case 1: 
        VideoChatActivity.access$2200(this$0, 2);
        return;
      }
    } while (!TalkApp.debugLoggable());
    VideoChatActivity.access$2300(this$0, "Request call with " + StringUtils.parseBareAddress(paramString));
    return;
    VideoChatActivity.access$2300(this$0, StringUtils.parseBareAddress(paramString) + " accepted call");
    return;
    VideoChatActivity.access$2200(this$0, 1);
    VideoChatActivity.access$2300(this$0, "call ended");
    VideoChatActivity.access$2400(this$0);
    VideoChatActivity.access$2500(this$0);
    return;
    VideoChatActivity.access$2200(this$0, 3);
    VideoChatActivity.access$2300(this$0, "In call with " + StringUtils.parseBareAddress(paramString) + " secure: " + secure);
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.videochat.VideoChatActivity.LocalCallStateClient
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */