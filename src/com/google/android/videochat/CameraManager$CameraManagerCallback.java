package com.google.android.videochat;

import android.hardware.Camera.Size;
import java.util.List;

abstract interface CameraManager$CameraManagerCallback
{
  public abstract Size getCaptureSizeForCamera(List<Camera.Size> paramList);
  
  public abstract void onCameraOpen(Size paramSize, int paramInt, boolean paramBoolean);
  
  public abstract void onFrameOutputSet(CameraManager.FrameOutputParameters paramFrameOutputParameters);
}

/* Location:
 * Qualified Name:     com.google.android.videochat.CameraManager.CameraManagerCallback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */