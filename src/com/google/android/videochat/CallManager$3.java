package com.google.android.videochat;

import com.google.android.videochat.util.Util;

class CallManager$3
  implements Runnable
{
  CallManager$3(CallManager paramCallManager) {}
  
  public void run()
  {
    String str = null;
    if ((this$0.isInOrInitiatingCall()) && (CallManager.access$1600(this$0) != null))
    {
      str = CallManager.access$1600(this$0);
      CallManager.access$1700(this$0, false);
    }
    for (;;)
    {
      if (str != null) {
        CallManager.access$2200(this$0, Util.parseBareAddress(str), CallManager.access$2000(this$0, str), CallManager.access$2100(this$0).isVideo(str), 3);
      }
      return;
      if (CallManager.access$1800(this$0) != null)
      {
        str = CallManager.access$1800(this$0);
        CallManager.access$1900(this$0, str, false);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.videochat.CallManager.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */