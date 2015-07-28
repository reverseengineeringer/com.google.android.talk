package com.google.android.talk;

import android.telephony.PhoneStateListener;
import com.google.android.talk.videochat.CallTaskDispatcher;
import com.google.android.talk.videochat.CallTaskDispatcher.CallTask;
import com.google.android.videochat.CallSession;
import com.google.android.videochat.util.LogUtil;

class GlobalCallStateMonitor$1
  extends PhoneStateListener
{
  GlobalCallStateMonitor$1(GlobalCallStateMonitor paramGlobalCallStateMonitor) {}
  
  public void onCallStateChanged(int paramInt, String paramString)
  {
    if (paramInt == 2) {
      new CallTaskDispatcher(GlobalCallStateMonitor.access$100(this$0)).postCallTask(new CallTaskDispatcher.CallTask()
      {
        public void runTask(CallSession paramAnonymousCallSession)
        {
          LogUtil.LOGD("Talk:GlobalCallStateMonitor", "ending Talk call due to a phone call");
          paramAnonymousCallSession.terminateCall(GlobalCallStateMonitor.access$000(this$0));
        }
      });
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.GlobalCallStateMonitor.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */