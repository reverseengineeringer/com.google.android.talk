package com.google.android.talk.videochat;

import android.content.Context;
import android.hardware.Camera;
import android.hardware.Camera.CameraInfo;
import com.google.android.gsf.Gservices;
import com.google.android.talk.TalkApp;
import com.google.android.videochat.Size;

public class CameraTracker
{
  private int[] mCameraIdList;
  private Size[] mCameraSizeOverrides;
  private int mNumAvailableCameras;
  
  public CameraTracker(Context paramContext)
  {
    inspectCameras(paramContext);
  }
  
  private void inspectCameras(Context paramContext)
  {
    Object localObject = Gservices.getString(paramContext.getContentResolver(), "gtalk_vc_force_camera_ids");
    paramContext = Gservices.getString(paramContext.getContentResolver(), "gtalk_vc_force_camera_dimensions");
    String[] arrayOfString;
    if (localObject != null)
    {
      localObject = ((String)localObject).split(",");
      if (localObject.length == 0)
      {
        TalkApp.LOGD("talk", "Camera override empty, disabling");
        if ((mNumAvailableCameras != 0) && (paramContext != null))
        {
          arrayOfString = paramContext.split(",");
          if ((arrayOfString.length & 0x1) == 0) {
            break label387;
          }
          TalkApp.LOGE("talk", "Non-multiple of 2 length in gtalk_vc_force_camera_dimensions " + paramContext);
        }
      }
    }
    int j;
    label387:
    do
    {
      return;
      mNumAvailableCameras = 0;
      mCameraIdList = new int[localObject.length];
      j = localObject.length;
      i = 0;
      int k;
      while (i < j)
      {
        arrayOfString = localObject[i];
        try
        {
          k = Integer.parseInt(arrayOfString);
          if (k != -1)
          {
            mCameraIdList[mNumAvailableCameras] = k;
            mNumAvailableCameras += 1;
          }
        }
        catch (NumberFormatException localNumberFormatException)
        {
          for (;;)
          {
            TalkApp.LOGE("talk", "bad id " + arrayOfString + " in " + localObject);
          }
        }
        i += 1;
      }
      break;
      localObject = new Camera.CameraInfo();
      int n = Camera.getNumberOfCameras();
      mCameraIdList = new int[n];
      mNumAvailableCameras = 0;
      j = 0;
      while (j < 3)
      {
        k = 0;
        if (k < n)
        {
          Camera.getCameraInfo(k, (Camera.CameraInfo)localObject);
          int m = 0;
          switch (j)
          {
          default: 
            i = m;
            if (facing != 1)
            {
              i = m;
              if (facing != 0) {
                i = 1;
              }
            }
            break;
          }
          for (;;)
          {
            if (i != 0)
            {
              mCameraIdList[mNumAvailableCameras] = k;
              mNumAvailableCameras += 1;
            }
            k += 1;
            break;
            i = m;
            if (facing == 1)
            {
              i = 1;
              continue;
              i = m;
              if (facing == 0) {
                i = 1;
              }
            }
          }
        }
        j += 1;
      }
      break;
      j = Math.min(mNumAvailableCameras, arrayOfString.length / 2);
    } while (j <= 0);
    mCameraSizeOverrides = new Size[j];
    int i = 0;
    while (i < j) {
      try
      {
        paramContext = new Size(Integer.parseInt(arrayOfString[(i * 2)]), Integer.parseInt(arrayOfString[(i * 2 + 1)]));
        if (width != -1)
        {
          localObject = paramContext;
          if (height != -1) {}
        }
        else
        {
          localObject = null;
        }
        mCameraSizeOverrides[i] = localObject;
        i += 1;
      }
      catch (NumberFormatException paramContext)
      {
        for (;;)
        {
          paramContext = null;
        }
      }
    }
  }
  
  public int firstCamera()
  {
    return mCameraIdList[0];
  }
  
  public int getNumAvailableCameras()
  {
    return mNumAvailableCameras;
  }
  
  public Size getOverrideSizeForCamera(int paramInt)
  {
    if ((mCameraSizeOverrides == null) || (paramInt >= mCameraSizeOverrides.length)) {
      return null;
    }
    return mCameraSizeOverrides[paramInt];
  }
  
  public int nextCamera(int paramInt)
  {
    int k = -1;
    int i = 0;
    int j;
    for (;;)
    {
      j = k;
      if (i < mNumAvailableCameras)
      {
        if (mCameraIdList[i] == paramInt) {
          j = i;
        }
      }
      else
      {
        if (j != -1) {
          break;
        }
        return -1;
      }
      i += 1;
    }
    i = j + 1;
    paramInt = i;
    if (i == mNumAvailableCameras) {
      paramInt = 0;
    }
    return mCameraIdList[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.talk.videochat.CameraTracker
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */