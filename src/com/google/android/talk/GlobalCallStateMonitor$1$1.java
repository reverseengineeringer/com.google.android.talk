package com.google.android.talk;

import com.google.android.talk.videochat.CallTaskDispatcher.CallTask;
import com.google.android.videochat.CallSession;
import com.google.android.videochat.util.LogUtil;

class GlobalCallStateMonitor$1$1
  implements CallTaskDispatcher.CallTask
{
  GlobalCallStateMonitor$1$1(GlobalCallStateMonitor.1 param1) {}
  
  public void runTask(CallSession paramCallSession)
  {
    LogUtil.LOGD("Talk:GlobalCallStateMonitor", "ending Talk call due to a phone call");
    paramCallSession.terminateCall(GlobalCallStateMonitor.access$000(this$1.this$0));
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.GlobalCallStateMonitor.1.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */