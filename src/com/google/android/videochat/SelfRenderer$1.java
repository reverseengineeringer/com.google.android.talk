package com.google.android.videochat;

import android.hardware.Camera.Size;
import android.util.Log;
import com.google.android.videochat.util.LogUtil;
import java.util.Iterator;
import java.util.List;

class SelfRenderer$1
  implements CameraManager.CameraManagerCallback
{
  SelfRenderer$1(SelfRenderer paramSelfRenderer) {}
  
  public Size getCaptureSizeForCamera(List<Camera.Size> paramList)
  {
    if (paramList.size() == 0) {
      throw new RuntimeException("empty previewSizes list");
    }
    Object localObject = SelfRenderer.access$400(this$0).getIdealCaptureSize();
    int j;
    if (localObject != null) {
      j = width;
    }
    for (int i = height;; i = 400)
    {
      int k = Integer.MAX_VALUE;
      localObject = null;
      Iterator localIterator = paramList.iterator();
      paramList = (List<Camera.Size>)localObject;
      while (localIterator.hasNext())
      {
        localObject = (Camera.Size)localIterator.next();
        int n = width - j;
        int i1 = height - i;
        int m = n;
        if (n < 0) {
          m = n * -4;
        }
        n = i1;
        if (i1 < 0) {
          n = i1 * -4;
        }
        m += n;
        if (m < k)
        {
          k = m;
          paramList = (List<Camera.Size>)localObject;
        }
      }
      j = 640;
    }
    return new Size(width, height);
  }
  
  public void onCameraOpen(final Size paramSize, final int paramInt, final boolean paramBoolean)
  {
    if (LogUtil.verboseLoggable()) {
      Log.v("vclib:SelfRenderer", "onCameraOpen " + paramSize + " orientation " + paramInt + " flip " + paramBoolean + " deviceOrientation " + SelfRenderer.access$500(this$0) + " cameraOrientation " + SelfRenderer.access$600(this$0));
    }
    SelfRenderer.access$400(this$0).queueEvent(new Runnable()
    {
      public void run()
      {
        SelfRenderer.access$702(this$0, new Size(paramSize));
        SelfRenderer.access$802(this$0, paramBoolean);
        SelfRenderer.access$902(this$0, paramInt);
        SelfRenderer.access$1000(this$0);
        SelfRenderer.access$400(this$0).onCameraOpened(paramBoolean);
        SelfRenderer.access$300(this$0);
      }
    });
    SelfRenderer.access$1102(this$0, false);
  }
  
  public void onFrameOutputSet(final CameraManager.FrameOutputParameters paramFrameOutputParameters)
  {
    if (LogUtil.verboseLoggable()) {
      Log.v("vclib:SelfRenderer", "onFrameOutputSet " + size.width + "x" + size.height);
    }
    SelfRenderer.access$400(this$0).queueEvent(new Runnable()
    {
      public void run()
      {
        SelfRenderer.access$202(this$0, new CameraManager.FrameOutputParameters(paramFrameOutputParameters));
        SelfRenderer.access$300(this$0);
      }
    });
  }
}

/* Location:
 * Qualified Name:     com.google.android.videochat.SelfRenderer.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */