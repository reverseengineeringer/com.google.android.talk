package com.google.android.videochat;

import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Looper;
import android.os.Message;

class CameraManager$1$1
  implements Handler.Callback
{
  CameraManager$1$1(CameraManager.1 param1) {}
  
  public boolean handleMessage(Message paramMessage)
  {
    int i = 0;
    synchronized (CameraManager.access$100(this$1.this$0))
    {
      if ((what == 101) || (CameraManager.access$300(this$1.this$0) == null)) {
        Looper.myLooper().quit();
      }
      while (what != 100)
      {
        if (i != 0) {
          CameraManager.access$400(this$1.this$0, System.nanoTime());
        }
        return true;
      }
      i = 1;
      CameraManager.access$300(this$1.this$0).sendEmptyMessageDelayed(100, 1000L);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.videochat.CameraManager.1.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */