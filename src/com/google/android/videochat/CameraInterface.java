package com.google.android.videochat;

public class CameraInterface
{
  private CameraManager mCameraManager;
  
  CameraInterface(CameraManager paramCameraManager)
  {
    mCameraManager = paramCameraManager;
  }
  
  public boolean arePreview3ALocksSupported()
  {
    return mCameraManager.arePreview3ALocksSupported();
  }
  
  public int getCurrentCameraId()
  {
    return mCameraManager.getCurrentCameraId();
  }
  
  public void setPreview3ALocks(boolean paramBoolean)
  {
    mCameraManager.setPreview3ALocks(paramBoolean);
  }
  
  public void suspendCamera()
  {
    mCameraManager.suspendCamera();
  }
  
  public void useCamera(CameraSpecification paramCameraSpecification)
  {
    mCameraManager.useCamera(paramCameraSpecification);
  }
}

/* Location:
 * Qualified Name:     com.google.android.videochat.CameraInterface
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */