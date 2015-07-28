package com.google.android.talk.videochat;

import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;

final class VideoChatOutputProcessingService$BackgroundHandler
  extends Handler
{
  public VideoChatOutputProcessingService$BackgroundHandler(VideoChatOutputProcessingService paramVideoChatOutputProcessingService, Looper paramLooper)
  {
    super(paramLooper);
  }
  
  public void handleMessage(Message paramMessage)
  {
    Intent localIntent = (Intent)obj;
    int i = arg1;
    String str = localIntent.getAction();
    if ("com.google.android.videochat.ACTION_MISSED_CALL".equals(str)) {
      VideoChatOutputProcessingService.access$000(this$0, localIntent);
    }
    for (;;)
    {
      this$0.stopSelf(arg1);
      return;
      if ("com.google.android.videochat.ACTION_END_CAUSE".equals(str)) {
        VideoChatOutputProcessingService.access$100(this$0, localIntent);
      } else if ("com.google.android.videochat.ACTION_CALL_IN_PROGRESS".equals(str)) {
        VideoChatOutputProcessingService.access$200(this$0, localIntent);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.videochat.VideoChatOutputProcessingService.BackgroundHandler
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */