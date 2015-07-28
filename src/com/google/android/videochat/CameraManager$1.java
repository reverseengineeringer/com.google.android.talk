package com.google.android.videochat;

import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Looper;
import android.os.Message;

class CameraManager$1
  implements Runnable
{
  CameraManager$1(CameraManager paramCameraManager) {}
  
  public void run()
  {
    
    synchronized (CameraManager.access$100(this$0))
    {
      CameraManager.access$202(this$0, false);
      CameraManager.access$302(this$0, new Handler(new Handler.Callback()
      {
        public boolean handleMessage(Message paramAnonymousMessage)
        {
          int i = 0;
          synchronized (CameraManager.access$100(this$0))
          {
            if ((what == 101) || (CameraManager.access$300(this$0) == null)) {
              Looper.myLooper().quit();
            }
            while (what != 100)
            {
              if (i != 0) {
                CameraManager.access$400(this$0, System.nanoTime());
              }
              return true;
            }
            i = 1;
            CameraManager.access$300(this$0).sendEmptyMessageDelayed(100, 1000L);
          }
        }
      }));
      CameraManager.access$300(this$0).sendEmptyMessageDelayed(100, 1000L);
      CameraManager.access$100(this$0).notify();
      Looper.loop();
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.videochat.CameraManager.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */