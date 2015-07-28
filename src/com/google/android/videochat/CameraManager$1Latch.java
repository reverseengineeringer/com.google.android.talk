package com.google.android.videochat;

class CameraManager$1Latch
{
  boolean mState;
  
  CameraManager$1Latch(CameraManager paramCameraManager) {}
  
  void awaitSet()
  {
    try
    {
      for (;;)
      {
        boolean bool = mState;
        if (bool) {
          break;
        }
        try
        {
          wait();
        }
        catch (InterruptedException localInterruptedException) {}
      }
      return;
    }
    finally {}
  }
  
  void set()
  {
    try
    {
      if (!mState)
      {
        mState = true;
        notifyAll();
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.videochat.CameraManager.1Latch
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */